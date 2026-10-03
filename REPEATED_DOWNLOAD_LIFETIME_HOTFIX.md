# Repeated download lifetime hotfix

- Fixes a repeat-run race where the first PDF download succeeds but a later run receives the native download event and then loses the short-lived source page/context before `saveAs()` executes.
- Native download bytes are now staged immediately when the browser emits the `download` event.
- Final naming and duplicate-file handling remain unchanged; the staged file is copied to the normal configured download directory and then removed.
- Existing direct, Chrome-network, PDF-response, stream, TLS/CA, and URL recovery paths remain available.
- The generated TypeScript runner receives the same protection so exported workflows behave consistently.
