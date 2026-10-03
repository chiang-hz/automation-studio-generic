# DGBAS Chrome Network Download Hotfix

This hotfix adds a new fallback path for `downloadMode: auto`.

Order:
1. Existing Node/Playwright `context.request.get()` direct download.
2. New Chrome-network navigation download: open a temporary page in the same BrowserContext, navigate directly to the anchor URL, then save either a native Chrome download or the PDF response body.
3. Existing source-element click/download/PDF-preview capture.
4. Existing saveAs/createReadStream/URL recovery chain.

The new path uses Chrome's TLS trust, cookies, session and network stack. It is designed for public/corporate sites whose download endpoint opens an inline PDF or where Node TLS differs from Chrome TLS.

No selectors, workflow steps, allowed domains, or explicit `direct` / `click` mode semantics were removed.
