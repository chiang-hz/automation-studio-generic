# Download context-closed native fallback hotfix

- Fixes downloads where Playwright receives the native `download` event but the originating page or BrowserContext closes before `saveAs()` / `context.request.get()` can finish.
- Native download staging now first uses `download.path()` and copies the browser-owned temporary file while the context is alive, then falls back to `saveAs()` and `createReadStream()`.
- Before clicking, the runner snapshots User-Agent, Referer and relevant cookies for recovery without querying a later-closed BrowserContext.
- On Windows, if the Playwright download object is no longer usable, the runner now tries the OS `curl.exe` (Schannel / Windows certificate store) with the captured request headers before attempting `context.request.get()`.
- This fallback is independent of the source page and Playwright BrowserContext lifetime, so short-lived DGBAS `Download.ashx` pages cannot invalidate the final recovery request.
- Existing direct download, Chrome-network download, PDF response capture, TLS/CA handling, stream recovery, filename handling and designer UI changes remain intact.
