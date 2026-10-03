# DGBAS Download.ashx PDF response hotfix

- Recognize DGBAS `Download.ashx` PDF links whose filename/path is Base64-encoded in query parameters `n` or `u`.
- Preserve the decoded original filename when response headers use a generic content type or omit a PDF filename.
- Keeps existing direct-download, TLS fallback, native browser download, and stream-recovery behavior unchanged.
