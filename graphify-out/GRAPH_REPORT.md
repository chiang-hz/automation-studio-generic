# Graph Report - automation-studio-generic-v2.0.2  (2026-10-08)

## Corpus Check
- 177 files · ~110,826 words
- Verdict: corpus is large enough that graph structure adds value.
- Unclassified: 10 file(s) not represented in the graph (top: .bat 5, (none) 2, .css 2)

## Summary
- 1373 nodes · 3842 edges · 51 communities (48 shown, 3 thin omitted)
- Extraction: 97% EXTRACTED · 3% INFERRED · 0% AMBIGUOUS · INFERRED: 100 edges (avg confidence: 0.81)
- Token cost: 0 input · 0 output

## Community Hubs (Navigation)
- Batch Execution & Data Grid
- Playwright Test Suites
- Report Adapters & Catalog Subsystem
- Studio HTTP Server & Routing
- Frontend State Store & Models
- AI Model Providers & Gateways
- AI Site Exploration Engine
- Browser CDP Connection Management
- Playwright Action Recorder
- Frontend Design System & Styles
- Task Storage & Local Timestamps
- AI Failure Diagnostics
- Studio Dashboard & Settings
- Monaco Code Editor & Run Grids
- React SPA Entry & Mounting
- AI Assistant & Debug Inspector
- Studio Config & Persistence State
- AI Workflow Synthesis & Drafts
- CLI Flow Runner & MCP Server
- Node.js Test Framework Helpers
- Architecture Specs & MCP Protocol
- Frontend Event Bridge & Sockets
- Workflow Exporter & Packaging
- EBAS Debug Recorder & Errors
- Background Storage Sweeper
- Browser Stealth & Anti-Bot Shield
- Diagnostic Sanitization & Redaction
- Executor CDP Download Sink
- UI Component Dependencies
- Visual Workflow Designer Canvas
- Executor DOM Locators & Interactions
- Executor Flow & Conditions
- Executor Download Network Security
- Frontend REST API Client SDK
- NPM Build & Execution Scripts
- Chromium Detection & EBAS SSO
- Run History Retention & Disk Quota
- Frontend TypeScript Config
- Browser Path Discovery Candidates
- Workflow Templates & Selectors
- Debug Artifact Retention Sweeper
- Backend TypeScript Config
- Workflow Runner Queue & Resumption
- Download Artifact Shell Opener
- Build Pipeline & Dev Dependencies
- Dynamic Parameter Management
- Workstation Preferences & Controls
- Store Normalizers & Slug Helpers
- Native PDF Printing & Scaling
- Batch Concurrency & Worker Limits

## God Nodes (most connected - your core abstractions)
1. `createStudioRouter()` - 77 edges
2. `bridge` - 48 edges
3. `StudioRuntimeSdk` - 46 edges
4. `FlowError` - 42 edges
5. `Button()` - 37 edges
6. `useStudio` - 36 edges
7. `ReportService` - 34 edges
8. `RecorderManager` - 32 edges
9. `StudioStore` - 30 edges
10. `WorkflowProject` - 29 edges

## Surprising Connections (you probably didn't know these)
- `createService()` --calls--> `TaskStore`  [EXTRACTED]
  tests/ebas-browser-mode.test.ts → src/domain/taskStore.ts
- `fixture()` --calls--> `TaskStore`  [EXTRACTED]
  tests/ebas-cancellation-time.test.ts → src/domain/taskStore.ts
- `createService()` --calls--> `ReportService`  [EXTRACTED]
  tests/ebas-browser-mode.test.ts → src/services/reportService.ts
- `fixture()` --calls--> `ReportService`  [EXTRACTED]
  tests/ebas-cancellation-time.test.ts → src/services/reportService.ts
- `harness()` --calls--> `WorkflowRunner`  [EXTRACTED]
  tests/batch-concurrency.test.ts → src/studio/executor.ts

## Import Cycles
- None detected.

## Communities (51 total, 3 thin omitted)

### Community 0 - "Batch Execution & Data Grid"
Cohesion: 0.06
Nodes (75): playwright, DEFAULT_EBAS_REPORT, definitionsCache, deleteEbasReportDefinition(), EBAS_BUSINESS_TYPE_OPTIONS, EBAS_LEVEL_OPTIONS, EBAS_OUTPUT_FORMAT_OPTIONS, EBAS_STAGE_OPTIONS (+67 more)

### Community 1 - "Playwright Test Suites"
Cohesion: 0.07
Nodes (43): CdpConnectionResult, cdpLaunchArguments(), CdpTabInfo, connectToCdpBrowser(), defaultCdpProfileDir(), delay(), describeCdpTabs(), findChromeExecutable() (+35 more)

### Community 2 - "Report Adapters & Catalog Subsystem"
Cohesion: 0.10
Nodes (35): assertProviderConfig(), getActiveProviderConfig(), resolveSecret(), AIProviderError, createAIProvider(), buildAuthHeaders(), DEFAULT_RETRY_DELAYS, delay() (+27 more)

### Community 3 - "Studio HTTP Server & Routing"
Cohesion: 0.10
Nodes (28): BrowserMode, ErrorCodes, TaskStore, BatchDownloadItem, BatchDownloadItemInput, BatchDownloadItemStatus, BatchDownloadResult, BatchDownloadTask (+20 more)

### Community 4 - "Frontend State Store & Models"
Cohesion: 0.08
Nodes (51): accountCodeMatches(), applyInteractiveEbasKindSelections(), assertPageOpen(), BrowserLauncher, buildDownloadWaitError(), checkOutputFormat(), chooseByLabelOrNearbyText(), clickByText() (+43 more)

### Community 5 - "AI Model Providers & Gateways"
Cohesion: 0.08
Nodes (33): AIService, AIWebsiteExplorer, createAIRecorderProjectId(), createMonitor(), cssEscape(), describeElement(), ExplorationSession, isDownloadElement() (+25 more)

### Community 6 - "AI Site Exploration Engine"
Cohesion: 0.05
Nodes (3): WorkstationProject, Project, StudioRuntimeSdk

### Community 7 - "Browser CDP Connection Management"
Cohesion: 0.10
Nodes (41): ADAPTERS, AIWorkflowConversationTurn, AIWorkflowDraftDiff, AIWorkflowDraftDiffItem, AIWorkflowDraftProject, AIWorkflowDraftResult, AIWorkflowRevisionResult, buildAIWorkflowRevisionRequest() (+33 more)

### Community 8 - "Playwright Action Recorder"
Cohesion: 0.13
Nodes (19): Report Adapter & Catalog Subsystem, bindContextCancellation(), MockReportAdapter, sanitizeFileName(), withTimestamp(), PlaywrightReportAdapter, sanitizeFileName(), withTimestamp() (+11 more)

### Community 9 - "Frontend Design System & Styles"
Cohesion: 0.12
Nodes (26): exportBatchContent(), importBatchContent(), isSecret(), own(), parseCsv(), record(), BatchGrid(), Cell() (+18 more)

### Community 11 - "AI Failure Diagnostics"
Cohesion: 0.09
Nodes (34): AI Workflow Synthesis & Exploration, AIDebugAnalysisInput, AIDebugAnalysisResult, clampInt(), createAIDebugAnalysis(), DOWNLOAD_MODES, limit(), MANUAL_COMPLETION_MODES (+26 more)

### Community 12 - "Studio Dashboard & Settings"
Cohesion: 0.10
Nodes (29): Dashboard(), formatTime(), statusLabels, checkLabels, initialSelection, bytesLabel(), CleanupSummary(), dateLabel() (+21 more)

### Community 13 - "Monaco Code Editor & Run Grids"
Cohesion: 0.08
Nodes (29): editorOptions, labels, variants, name, private, type, version, class-variance-authority (+21 more)

### Community 14 - "React SPA Entry & Mounting"
Cohesion: 0.06
Nodes (28): aiBarHost, aiChatHost, aiDiffHost, batchHost, client, dashboardHost, debugHost, designerHost (+20 more)

### Community 15 - "AI Assistant & Debug Inspector"
Cohesion: 0.17
Nodes (29): AIChat(), AIDiff(), AIFloatingBar(), RevealedText(), CodeEditor(), StudioCodeEditor(), CommandPalette(), copyValue() (+21 more)

### Community 16 - "Studio Config & Persistence State"
Cohesion: 0.09
Nodes (31): DEFAULT_AI_SETTINGS, clampSystemInteger(), DebugCleanupResult, DebugCleanupStatus, debugCleanupStatusPath, debugRoot, DeleteRunsResult, domainList() (+23 more)

### Community 17 - "AI Workflow Synthesis & Drafts"
Cohesion: 0.15
Nodes (29): buildAIWorkflowRequest(), createAIWorkflowDraft(), createAIWorkflowRevision(), parseAIWorkflowJson(), inspectCdpEndpoint(), readFailurePageSummary(), createEbasExample(), createGenericExample() (+21 more)

### Community 18 - "CLI Flow Runner & MCP Server"
Cohesion: 0.13
Nodes (17): current, AdapterKind, EBAS_WORKER_IDS, EbasWorkerId, loadConfig(), createReportService(), assertObject(), handleLine() (+9 more)

### Community 19 - "Node.js Test Framework Helpers"
Cohesion: 0.12
Nodes (9): assets, html, buildPagePdfFilename(), localPdfFilenameTimestamp(), parseCsvReport(), splitCsvLine(), parseDownloadedReport(), createService() (+1 more)

### Community 20 - "Architecture Specs & MCP Protocol"
Cohesion: 0.14
Nodes (16): Automation Studio V2.0.2 Platform, Batch Concurrency & Worker Engine, Playwright MCP Protocol Layer, Versioning & Hotfix Compatibility Policy, delay(), getToolText(), JsonRpcResponse, main() (+8 more)

### Community 21 - "Frontend Event Bridge & Sockets"
Cohesion: 0.12
Nodes (12): React 19 SPA Modern Frontend, Real-time Browser Recorder & SSE Bridge, Visual Workflow Designer Canvas, Snapshot, Window, createHoverIntent(), PALETTE_HOVER_DELAY_MS, reorderWorkflowSteps() (+4 more)

### Community 22 - "Workflow Exporter & Packaging"
Cohesion: 0.15
Nodes (21): collectSelectors(), exampleParameters(), generatedParameterTypes(), generatedTest(), json(), parameterMarkdown(), portableEntries(), portableReadme() (+13 more)

### Community 23 - "EBAS Debug Recorder & Errors"
Cohesion: 0.16
Nodes (10): DebugRecorder, dumpExtTree(), EbasReportAdapter, sanitizeFileName(), withTimestamp(), EbasReportDefinition, getEbasReportDefinition(), normalizeBrowserMode() (+2 more)

### Community 24 - "Background Storage Sweeper"
Cohesion: 0.18
Nodes (7): isDebugCleanupDue(), isRunHistoryCleanupDue(), nextRunHistoryCleanupEligibleAt(), enqueueJsonWrite(), formatFileError(), StudioStore, writeJsonAtomic()

### Community 25 - "Browser Stealth & Anti-Bot Shield"
Cohesion: 0.12
Nodes (18): Browser CDP & Stealth Management, browserLaunchMessage(), appendEvent(), assertNoRecentRateLimit(), attachObservability(), attachPageObservability(), captureFailure(), clamp() (+10 more)

### Community 26 - "Diagnostic Sanitization & Redaction"
Cohesion: 0.22
Nodes (20): buildAIDebugAnalysisRequest(), redactSecrets(), redactText(), SECRET_KEYS, aggregateFrameText(), buildDiagnosticReadme(), buildFailureDiagnosticZip(), buildFramePath() (+12 more)

### Community 27 - "Executor CDP Download Sink"
Cohesion: 0.13
Nodes (21): CdpDownloadSink, countEnabledSteps(), DownloadCapture, downloadWithWindowsNative(), isAllowedHostname(), isCertificateTrustError(), materializeParameters(), normalizeAllowedDomain() (+13 more)

### Community 28 - "UI Component Dependencies"
Cohesion: 0.10
Nodes (21): dependencies, class-variance-authority, clsx, cmdk, lucide-react, monaco-editor, @monaco-editor/react, playwright (+13 more)

### Community 29 - "Visual Workflow Designer Canvas"
Cohesion: 0.20
Nodes (16): ConditionBranch(), edgeTypes, FlowCanvas(), InsertEdge(), InsertMenu(), kindIcons, nestedStepCount(), nodeTypes (+8 more)

### Community 31 - "Executor DOM Locators & Interactions"
Cohesion: 0.15
Nodes (17): appendDownloadTimestamp(), describePage(), extractPatternValue(), fillLocator(), getTabState(), initializeTabState(), performComponentAction(), prepareInteraction() (+9 more)

### Community 32 - "Executor Flow & Conditions"
Cohesion: 0.19
Nodes (17): applyWait(), captureStepState(), cssString(), evaluateCondition(), interpolate(), orderedFrameScopes(), resolveFrame(), resolveFrameOptional() (+9 more)

### Community 33 - "Executor Download Network Security"
Cohesion: 0.24
Nodes (17): assertAllowedUrl(), browserCdpResourceDownload(), browserNavigationDownload(), clickAndWaitForDownload(), createCdpDownloadSink(), decodedDownloadNameFromUrl(), delay(), directLinkDownload() (+9 more)

### Community 35 - "NPM Build & Execution Scripts"
Cohesion: 0.12
Nodes (16): scripts, check, check:all, demo, dev, ebas:login, frontend:build, frontend:check (+8 more)

### Community 36 - "Chromium Detection & EBAS SSO"
Cohesion: 0.21
Nodes (9): EBAS Procurement Report Integration, fileExists(), findLocalPlaywrightChromiumCandidates(), installedChromiumCandidates(), normalizePath(), readChromiumRevision(), resolveChromiumExecutablePath(), config (+1 more)

### Community 37 - "Run History Retention & Disk Quota"
Cohesion: 0.21
Nodes (13): Execution History & Diagnostic Retention, calculateRunHistoryUsage(), DELETABLE_STATUSES, directorySize(), findExpiredRunHistory(), isRunHistoryDeletable(), RUN_HISTORY_CLEANUP_INTERVAL_MS, RunHistorySweepCandidates (+5 more)

### Community 38 - "Frontend TypeScript Config"
Cohesion: 0.15
Nodes (12): compilerOptions, allowImportingTsExtensions, jsx, lib, module, moduleResolution, noEmit, skipLibCheck (+4 more)

### Community 39 - "Browser Path Discovery Candidates"
Cohesion: 0.24
Nodes (12): DESKTOP_VIEWPORT, existingFile(), firstExisting(), installedBrowserCandidates(), localPlaywrightCandidates(), readRevision(), resolveStudioBrowser(), safeExecutablePath() (+4 more)

### Community 40 - "Workflow Templates & Selectors"
Cohesion: 0.33
Nodes (12): applyRecordedEvents(), cssQuotedSelector(), isGoogleCseTemporarySelector(), isRelatedHoverEvent(), normalizeRecordedSelectorPayload(), recordedEventFrameUrl(), recordedEventKind(), recordedEventsToSteps() (+4 more)

### Community 41 - "Debug Artifact Retention Sweeper"
Cohesion: 0.26
Nodes (10): DEBUG_CLEANUP_INTERVAL_MS, DebugCleanupSweepResult, directorySize(), listOrphanRunDirectories(), nextDebugCleanupEligibleAt(), removeEmptyParents(), removeRunDebugDirectory(), resolveSafeDebugPath() (+2 more)

### Community 42 - "Backend TypeScript Config"
Cohesion: 0.17
Nodes (11): compilerOptions, esModuleInterop, forceConsistentCasingInFileNames, module, moduleResolution, outDir, rootDir, skipLibCheck (+3 more)

### Community 43 - "Workflow Runner Queue & Resumption"
Cohesion: 0.40
Nodes (4): AIWorkflowDraftInput, WorkflowRunner, WorkflowProject, WorkflowRun

### Community 44 - "Download Artifact Shell Opener"
Cohesion: 0.38
Nodes (9): DownloadOpenMode, hasPdfSignature(), isWindowsExplorerDirectoryOpen(), openStudioDownloadArtifact(), pathExists(), resolveStudioDownloadArtifact(), runCommand(), runWindowsShellOpen() (+1 more)

### Community 45 - "Build Pipeline & Dev Dependencies"
Cohesion: 0.22
Nodes (9): devDependencies, tailwindcss, @tailwindcss/vite, @types/node, @types/react, @types/react-dom, typescript, vite (+1 more)

### Community 46 - "Dynamic Parameter Management"
Cohesion: 0.39
Nodes (7): emptyDraft(), ParameterDraft, ParameterManager(), readDependentOptions(), toDraft(), typeLabels, writeDependentOptions()

### Community 47 - "Workstation Preferences & Controls"
Cohesion: 0.36
Nodes (6): BrowserSettings, cloneProject(), Field(), Switch(), Workstation(), WorkstationAction

### Community 48 - "Store Normalizers & Slug Helpers"
Cohesion: 0.36
Nodes (6): normalizeBrowserSettings(), normalizeParameters(), normalizeProject(), normalizeSettings(), safeId(), slugify()

### Community 49 - "Native PDF Printing & Scaling"
Cohesion: 0.43
Nodes (6): buildNativePagePdfOptions(), marginMm(), NativePagePdfOptions, PagePdfConfiguration, pdfScale(), templateHtml()

### Community 50 - "Batch Concurrency & Worker Limits"
Cohesion: 0.48
Nodes (5): effectiveBatchConcurrency(), MAX_BATCH_CONCURRENCY, normalizeBatchConcurrency(), flush(), harness()

## Knowledge Gaps
- **239 isolated node(s):** `Window`, `editorOptions`, `statusLabels`, `kindIcons`, `nodeTypes` (+234 more)
  These have ≤1 connection - possible missing edges or undocumented components. (Counts symbols only; 338 node(s) total have ≤1 connection when file, concept and rationale nodes are included.)
- **3 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `playwright` connect `Batch Execution & Data Grid` to `Playwright Test Suites`, `Frontend State Store & Models`, `Browser Path Discovery Candidates`, `Playwright Action Recorder`, `Monaco Code Editor & Run Grids`, `AI Workflow Synthesis & Drafts`, `Node.js Test Framework Helpers`, `EBAS Debug Recorder & Errors`?**
  _High betweenness centrality (0.085) - this node is a cross-community bridge._
- **Why does `React 19 SPA Modern Frontend` connect `Frontend Event Bridge & Sockets` to `Batch Execution & Data Grid`, `Architecture Specs & MCP Protocol`, `React SPA Entry & Mounting`?**
  _High betweenness centrality (0.071) - this node is a cross-community bridge._
- **Why does `createStudioRouter()` connect `AI Workflow Synthesis & Drafts` to `Batch Execution & Data Grid`, `Playwright Test Suites`, `Report Adapters & Catalog Subsystem`, `AI Model Providers & Gateways`, `Browser CDP Connection Management`, `Workflow Templates & Selectors`, `Browser Path Discovery Candidates`, `AI Failure Diagnostics`, `Download Artifact Shell Opener`, `Workflow Runner Queue & Resumption`, `Store Normalizers & Slug Helpers`, `Workflow Exporter & Packaging`, `Background Storage Sweeper`, `Diagnostic Sanitization & Redaction`, `Executor CDP Download Sink`?**
  _High betweenness centrality (0.056) - this node is a cross-community bridge._
- **Are the 39 inferred relationships involving `createStudioRouter()` (e.g. with `.diagnoseProvider()` and `.generate()`) actually correct?**
  _`createStudioRouter()` has 39 INFERRED edges - model-reasoned connections that need verification._
- **What connects `Window`, `editorOptions`, `statusLabels` to the rest of the system?**
  _239 weakly-connected nodes found - possible documentation gaps or missing edges._
- **Should `Batch Execution & Data Grid` be split into smaller, more focused modules?**
  _Cohesion score 0.055364314400458976 - nodes in this community are weakly interconnected._
- **Should `Playwright Test Suites` be split into smaller, more focused modules?**
  _Cohesion score 0.06603346901854365 - nodes in this community are weakly interconnected._