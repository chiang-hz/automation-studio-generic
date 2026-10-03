# Publish / Runs / Batch layout hotfix

Target: Automation Studio v1.0.39

## Changes

1. Publish & Version
   - The change-notes textarea is initialized from the current project's original description when a project is first shown.
   - Switching projects refreshes the initial notes, while typing within the same project is not overwritten by routine renders.

2. Run History
   - Uses a fixed-layout table with explicit column proportions.
   - Long error URLs and stack traces wrap within the error cell instead of widening the page.
   - Project IDs and downloaded filenames are clipped/ellipsized where appropriate.
   - Action buttons remain within the action column so the full run-history feature set stays visible within the page width on desktop.

3. Batch Tasks
   - Keeps the batch list full-width at the top.
   - Groups advanced settings into Execution pacing, Retry/concurrency, and Debug/storage sections.
   - Adds an auto-save indicator and improves spacing, sticky table headers, alternating rows, and responsive layout.
