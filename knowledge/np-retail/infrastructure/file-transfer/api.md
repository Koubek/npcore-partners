---
type: reference
tags: [np-retail, infrastructure, file-transfer, ftp, sftp]
relates: [np-retail/infrastructure/file-transfer/overview.md]
updated: 2026-05-09
---

# File Transfer Module — API Reference

## Tables

| ID | Name | Caption | Key Fields | Description |
|----|------|---------|------------|-------------|
| 6059868 | "NPR FTP Connection" | FTP Connection | Code (Code[20]) | FTP/S connection definition: host, port (default 21), username, password (masked), encryption mode enum, passive mode flag, force behavior |
| — | "NPR SFTP Connection" | SFTP Connection | Code | SFTP connection definition: host, port (default 22), username, password, SSH key, force behavior |

## Codeunits

| ID | Name | Access | Description |
|----|------|--------|-------------|
| 6151611 | "NPR AF FTP Client" | Internal | FTP/S client: constructs JSON request, calls Azure Function via HttpClient. Methods: DownloadFile, UploadFile, RenameFile, DeleteFile, DeleteDirectory, ListDirectory, CreateDirectory, DirectoryExists |
| 6151394 | "NPR Sftp Api" | Public | Public SFTP API with [TryFunction] overloads for Download, Upload, Move, Delete (file/dir), List, Create, accepting either SFTP Connection record or individual params |
| — | "NPR AF SFTP Client" | Internal | Internal SFTP client called by NPR Sftp Api |

## Pages

| ID | Name | PageType | SourceTable | Description |
|----|------|----------|-------------|-------------|
| — | "NPR FTP Connection List" | List | NPR FTP Connection | Lists all FTP/S connection definitions |
| — | "NPR FTP Connection" | Card | NPR FTP Connection | Edit FTP/S connection details |
| — | "NPR SFTP Connection List" | List | NPR SFTP Connection | Lists all SFTP connection definitions |
| — | "NPR SFTP Connection" | Card | NPR SFTP Connection | Edit SFTP connection details |
