# DGBAS Chrome DevTools download sink hotfix

## Problem

DGBAS `Download.ashx` can trigger a Chrome download and close the initiating target immediately. A Playwright `download` event may therefore be observed while `download.path()`, `saveAs()`, `createReadStream()`, or a BrowserContext request already sees a closed target/context.

## Fix

For PDF click-download steps when `downloadPdfInsteadOfPreview` is enabled:

1. Before clicking, create an isolated temporary download directory.
2. Attach a Chromium CDP session to the source page.
3. Configure `Page.setDownloadBehavior` (falling back to `Browser.setDownloadBehavior`) so Chrome itself writes downloads directly into that directory.
4. Remove `target=_blank` and keep the existing PDF-download preference.
5. Click once.
6. Poll the isolated directory until the `.crdownload` file is finalized and the file size is stable.
7. Verify `%PDF-` for PDF URLs, then copy the finished file into the configured Automation Studio download directory.
8. Keep the former Playwright download/PDF-response/stream/curl/request paths only as fallbacks.

This moves the primary save operation *before* the short-lived page can close and does not depend on Playwright's `Download` object after the event is emitted.
