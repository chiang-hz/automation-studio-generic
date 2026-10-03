# DGBAS CDP network-resource download hotfix

This build adds a pre-click PDF download path based on Chrome DevTools Protocol `Network.loadNetworkResource` and `IO.read`.

For PDF links with a stable href and `downloadPdfInsteadOfPreview=true`, Automation Studio now asks Chrome itself to fetch the resource with browser credentials and cache disabled, streams the response to a temporary file, validates the `%PDF-` signature, and then copies the file to the configured download directory.

This path runs before the legacy click/download-event path, so it does not depend on Playwright `Download.saveAs()`, a popup remaining alive, or `BrowserContext.request` after the source page closes. Existing download methods remain as fallbacks.
