# Automation Studio v1.0.39 - Batch download result hotfix

## Changes

1. Run history / batch results now show download artifacts with the same actions as Test & Debug:
   - Open file
   - Open folder
2. Batch-mode downloads append a timestamp before the source extension.
   - Example: `損益表-114.xlsx` -> `損益表-114-20260914-154512.xlsx`
3. Non-batch Test & Debug runs keep the existing filename behavior.
4. Existing manual-login batch session reuse, parameter-ID repair, configurable download directory, iframe download lookup, and short-lived popup download tolerance are preserved.
