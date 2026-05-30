---
type: concept
tags: [np-retail, infrastructure, file-transfer, ftp, sftp]
relates: [np-retail/infrastructure/file-transfer/api.md]
updated: 2026-05-09
---

# File Transfer in NP Retail

NP Retail supports two remote file transfer protocols — **FTP/S (FTP with SSL/TLS encryption)** and **SFTP (SSH File Transfer Protocol)** — both proxied through Azure Functions rather than connecting directly from Business Central.

## Architecture

### FTP/S

```
NPR AF FTP Client (BC) → Azure Function (FtpAzureFunctionUrl) → Remote FTP/S Server
```

The `NPR AF FTP Client` codeunit constructs JSON payloads with host, credentials, port, passive mode, encryption mode (None/Implicit/Explicit), and sends HTTP POST requests to an Azure Function that handles the actual FTP/S operations. The Azure Function URL and host key are stored in Azure Key Vault.

### SFTP

```
NPR Sftp API (BC public API) → NPR AF SFTP Client (BC) → Azure Function → Remote SFTP Server
```

The `NPR Sftp API` codeunit is the public-facing API with overloads accepting either a `NPR SFTP Connection` record or individual parameters (server, username, password, SSH key). Connection definitions are stored in `NPR SFTP Connection` and `NPR FTP Connection` tables.

## Operations

Both protocols support: Download, Upload, Move/Rename, Delete (file & directory), List Directory, Create Directory, Directory Exists, with configurable force behavior (overwrite existing files, delete non-empty directories).
