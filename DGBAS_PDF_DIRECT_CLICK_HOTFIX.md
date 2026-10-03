# DGBAS PDF direct-click hotfix

This hotfix adds an opt-in browser setting: `browser.downloadPdfInsteadOfPreview`.

When enabled for a managed persistent Chrome profile, Automation Studio writes Chrome's supported preference `plugins.always_open_pdf_externally=true` before browser startup. Download steps can therefore use native click-based downloads instead of opening the built-in PDF viewer. The executor also removes `target=_blank` from PDF anchors immediately before a forced-download click so the source page is not replaced by a preview tab.

The supplied DGBAS workflow enables this setting and changes the final PDF download step to `downloadMode: "click"`. Existing `auto`, direct-request, certificate fallback, response capture, and stream recovery behavior is preserved for other workflows.
