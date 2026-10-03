# EBAS download hotfix for Automation Studio v1.0.39

This build contains two EBAS/download fixes:

1. Download steps now honor `autoFrameSearch`. EBAS renders `#print` inside the `main` iframe, so the final Excel download step can locate and click the Print button.
2. `Settings -> Default download path` is now used by workflow downloads. Relative paths resolve from the Automation Studio folder; absolute Windows paths such as `D:\EBAS下載` are used directly.

The download artifact open/open-folder API uses the same configured download root.

The earlier short-lived popup/page-close download race hotfix is retained.
