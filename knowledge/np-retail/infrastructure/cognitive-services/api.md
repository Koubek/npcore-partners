---
type: reference
tags: [np-retail, infrastructure, cognitive-services]
relates: [np-retail/infrastructure/cognitive-services/overview.md]
updated: 2026-05-09
---

# Cognitive Services — API Reference

## Enums

| ID | Name | Caption | Values | Description |
|----|------|---------|--------|-------------|
| 6014441 | "NPR MCS API Setup API" | NPR MCS API Setup API | Face (0), Speech (1), Recommendation (2) | Categorizes the Cognitive Services API type. Extensible |
| — | "NPR MCS API Setup Img Orien." | NPR MCS API Setup Img Orien. | — | Image orientation setting (unspecified values) |
| 6014443 | "NPR MCS Faces Action" | NPR MCS Faces Action | CaptureImage (0), CaptureAndIdentifyFaces (1), IdentifyFaces (2) | Defines the action taken on face capture |

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6059955 | "NPR MCS API Setup" | MCS API Setup | API (Enum "NPR MCS API Setup API") | Per-API endpoint configuration: BaseURL (Blob), Key 1, Key 2 (stored in IsolatedStorage with GUID), Image Orientation, Use Cognitive Services flag. Provides GetAPIKey1/2, GetBaseUrl, SetBaseUrl |
| 6059957 | "NPR MCS Person Groups" | MCS Person Groups | Id (Integer) | Logical groupings of persons. Fields: PersonGroupId (auto-generated GUID), Name. Auto-increments Id from 10000 |
| 6059958 | "NPR MCS Person" | MCS Person | PersonId (Text[50]) | Individual person: Name, UserData, PersonGroupId (table relation), Faces (FlowField count). OnValidate for Name/UserData triggers UpdatePersonInfo |
| 6059959 | "NPR MCS Faces" | MCS Faces | PersonId, FaceId | Detected face record: face rectangle (height/width/pos X/Y), age, gender, smile, facial hair (beard/sideburns/moustache), glasses, identified flag, action type. Includes Image (Media) field. GetImageContent exports to Tenant Media |
| 6059960 | "NPR MCS Person Bus. Entit." | MCS Person Bus. Entit. | (Key presumably) | Links PersonId to a BC record (Table Id + Record Key) for cross-referencing persons to business entities |
| — | "NPR MCS Person Groups Setup" | — | — | Maps BC table numbers to person groups for automatic face detection on record changes |
| — | "NPR MCS Webcam Arg Table" | — | — | Arguments for webcam capture functionality |

## Codeunits

| ID | Name | Caption | Key Procedures | Description |
|----|------|---------|---------------|-------------|
| 6059955 | "NPR MCS Face Service API" | NPR MCS Face Service API | GetPersonGroups, CreatePersonBusinessEntity, UpdatePersonInfo, ImportMemberPicture, DetectIdentifyPicture, DetectFaces, IdentifyFace, CreatePerson, AddPersonFace, TrainGroup, CheckTrainGroup, FindMember | Full Face API client. Calls Azure Cognitive Services Face API with REST operations. All procedures use Ocp-Apim-Subscription-Key header for auth |

## Pages

| ID | Name | Caption | Type | Description |
|----|------|---------|------|-------------|
| — | "NPR MCS API Setup" | MCS API Setup | Card | Configuration page for Cognitive Services endpoints |
| — | "NPR MCS Faces" | MCS Faces | List | List of detected faces |
| — | "NPR MCS Faces Card" | MCS Faces Card | Card | Individual face details |
| — | "NPR MCS Faces Image" | — | — | Face image display |
| — | "NPR MCS Person" | MCS Person | Card | Person details with face data |
| — | "NPR MCS Person Groups" | MCS Person Groups | List | Person groups list |
| — | "NPR MCS Person Groups Setup" | — | Card | Setup for automatic face detection per table |
| — | "NPR MCS Person Bus. Entities" | — | List | Business entity cross-reference list |

## Key Procedures Detail (MCS Face Service API)

| Procedure | Parameters | Description |
|-----------|------------|-------------|
| `GetPersonGroups` | — | Fetches all person groups from Azure and syncs to local table |
| `DetectFaces` | ImageInStream (InStream), var FacesJsonArray (JsonArray) | Sends image to Face API `/detect` with full attribute set (age, gender, headPose, smile, facialHair, glasses, emotion, hair, makeup, occlusion, accessories, blur, exposure, noise) |
| `IdentifyFace` | GroupID, FacesJsonArray, var IdentifyJsonArray | Matches detected faces against a person group via `/identify` with confidence threshold 0.5 |
| `ImportMemberPicture` | var MMMember (Record "NPR MM Member") | Full flow: upload image → detect → identify/create persons → store face data → import to member |
| `DetectIdentifyPicture` | var RecRef, PersonName, ImageInStream | Core face processing pipeline: detect faces, optionally identify, create/link persons, add face data, train group |
| `CreatePerson` | GroupID, PersonName, UserData | Creates person in Azure via `/persongroups/{id}/persons` |
| `AddPersonFace` | GroupID, PersonId, ImageInStream | Adds face to person via `/persongroups/{id}/persons/{id}/persistedFaces` |
| `TrainGroup` | GroupID | Triggers training via `/persongroups/{id}/train` |
| `CheckTrainGroup` | GroupID | Returns false if training status is `succeeded`, true if `notstarted`, errors if `running` |
