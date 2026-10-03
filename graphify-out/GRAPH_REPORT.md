# Graph Report - automation-studio-generic-v1.2.1  (2026-10-03)

## Corpus Check
- 123 files · ~107,006 words
- Verdict: corpus is large enough that graph structure adds value.
- Unclassified: 9 file(s) not represented in the graph (top: .bat 5, .css 2, .example 1)

## Summary
- 1283 nodes · 4000 edges · 45 communities
- Extraction: 96% EXTRACTED · 4% INFERRED · 0% AMBIGUOUS · INFERRED: 180 edges (avg confidence: 0.83)
- Token cost: 0 input · 0 output

## Community Hubs (Navigation)
- Flow Execution & Event Logging
- UI Batch Execution & Navigation
- AI Provider Configuration & Secrets
- UI Dialog & Theme Binding
- Workflow Step & Domain Designer
- EBAS Report Adapter & Verification
- AI Workflow Generator & Draft Diffing
- AI Website Exploration Engine
- AI Workflow Revision & Monitoring
- Batch Parameter Parsing & Row Generation
- Batch Download Types & Result Schema
- Download Artifacts & File System Helpers
- Report Adapter Interface & Runner
- Mock Report Adapter for Testing
- Browser Launch & Chromium Resolver
- Studio Server & Batch Preset Storage
- Chrome DevTools Protocol (CDP) Bridge
- Debug Storage & Retention Store
- Diagnostics Sanitization & Secret Redaction
- AI Workflow Draft & Failure Summary
- EBAS Report Definitions & Presets
- Run History Management UI
- AI Debug Failure Analyzer
- Studio Data Store & Cleanup Eligibility
- Run Failure Diagnostics & Inspection
- Workflow Project Exporter & Code Generator
- Project Dependencies & Package Config
- Chromium Executable & Process Utility
- Issue Report & System Diagnostics UI
- Browser Interaction Recorder Manager
- Recorder UI State & Profile Management
- JSON-RPC Tool Server Protocol
- Workflow Schema & Browser Connection Types
- AI Recorder Event Filtering & Selectors
- Run History Retention & Disk Usage
- EBAS Authentication & Session Lifecycle
- Batch Preset Import & Normalization
- TypeScript Build Configuration
- EBAS Worker Session & Manual Login
- Debug Recorder & Content Capture
- Debug Retention Sweeper & Directory Cleanup
- Settings & Project Parameter Normalization
- ZIP Archive & CRC32 Utility
- Atomic File I/O & JSON Persistence
- System Settings Range Clamping

## God Nodes (most connected - your core abstractions)
1. `bindActions()` - 96 edges
2. `createStudioRouter()` - 75 edges
3. `toast()` - 63 edges
4. `api()` - 52 edges
5. `FlowError` - 38 edges
6. `escapeHtml()` - 31 edges
7. `bindActions()` - 29 edges
8. `StudioStore` - 29 edges
9. `ReportService` - 28 edges
10. `RecorderManager` - 28 edges

## Surprising Connections (you probably didn't know these)
- `checkWorkerSession()` --calls--> `resolveChromiumExecutablePath()`  [EXTRACTED]
  src/ui/server.ts → src/adapters/chromiumExecutable.ts
- `startManualLogin()` --calls--> `resolveChromiumExecutablePath()`  [EXTRACTED]
  src/ui/server.ts → src/adapters/chromiumExecutable.ts
- `EbasReportAdapter` --implements--> `ReportAdapter`  [EXTRACTED]
  src/adapters/ebasReportAdapter.ts → src/adapters/reportAdapter.ts
- `EbasReportAdapter` --references--> `AppConfig`  [EXTRACTED]
  src/adapters/ebasReportAdapter.ts → src/config.ts
- `createReportService()` --calls--> `EbasReportAdapter`  [EXTRACTED]
  src/container.ts → src/adapters/ebasReportAdapter.ts

## Import Cycles
- None detected.

## Communities (45 total, 0 thin omitted)

### Community 0 - "Flow Execution & Event Logging"
Cohesion: 0.06
Nodes (89): AIDebugAnalysisInput, appendDownloadTimestamp(), appendEvent(), applyWait(), assertAllowedUrl(), assertNoRecentRateLimit(), attachObservability(), attachPageObservability() (+81 more)

### Community 1 - "UI Batch Execution & Navigation"
Cohesion: 0.07
Nodes (86): addBatchItem(), applyBatchParameter(), applyBatchYear(), bindActions(), bindNavigation(), callManualTool(), callMcpTool(), checkHealth() (+78 more)

### Community 2 - "AI Provider Configuration & Secrets"
Cohesion: 0.09
Nodes (42): assertProviderConfig(), getActiveProviderConfig(), resolveSecret(), AIProviderError, createAIProvider(), buildAuthHeaders(), DEFAULT_RETRY_DELAYS, delay() (+34 more)

### Community 3 - "UI Dialog & Theme Binding"
Cohesion: 0.09
Nodes (60): api(), applyDebugAIPatch(), applyTheme(), bindActions(), bindNavigation(), closeProjectDialog(), copyAIWorkflowDraft(), copyCdpLaunchCommand() (+52 more)

### Community 4 - "Workflow Step & Domain Designer"
Cohesion: 0.09
Nodes (57): adapterOptions(), addAllowedDomain(), addDomainValue(), addNestedStep(), addStep(), AI_PROVIDER_META, AI_WORKFLOW_MONITOR_STAGES, changeSelectedStepKind() (+49 more)

### Community 5 - "EBAS Report Adapter & Verification"
Cohesion: 0.08
Nodes (51): accountCodeMatches(), applyInteractiveEbasKindSelections(), assertPageOpen(), buildDownloadWaitError(), checkOutputFormat(), chooseByLabelOrNearbyText(), clickByText(), clickDropdownOption() (+43 more)

### Community 6 - "AI Workflow Generator & Draft Diffing"
Cohesion: 0.10
Nodes (44): ADAPTERS, AIWorkflowConversationTurn, AIWorkflowDraftDiff, AIWorkflowDraftDiffItem, AIWorkflowDraftProject, AIWorkflowDraftResult, AIWorkflowRevisionResult, buildAIWorkflowRequest() (+36 more)

### Community 7 - "AI Website Exploration Engine"
Cohesion: 0.10
Nodes (25): AIWebsiteExplorer, createMonitor(), cssEscape(), describeElement(), ExplorationSession, isDownloadElement(), isDownloadOnlyManualReason(), normalizeHttpUrl() (+17 more)

### Community 8 - "AI Workflow Revision & Monitoring"
Cohesion: 0.12
Nodes (42): acceptAIWorkflowRevision(), acceptAndApplyAIWorkflowRevision(), activeAIProviderSummary(), aiWorkflowErrorStageLabel(), aiWorkflowRequestSignal(), appendAIWorkflowMonitorEvent(), applyAIWorkflowToCurrentProject(), beginAIWorkflowOperation() (+34 more)

### Community 9 - "Batch Parameter Parsing & Row Generation"
Cohesion: 0.08
Nodes (39): addBatchRow(), aiAuthOptions(), aiWorkflowStepDiffState(), batchParameterDefault(), countAIWorkflowSteps(), createBatchRow(), ensureParameterIds(), escapeHtml() (+31 more)

### Community 10 - "Batch Download Types & Result Schema"
Cohesion: 0.12
Nodes (25): BatchDownloadItem, BatchDownloadItemInput, BatchDownloadItemStatus, BatchDownloadResult, BatchDownloadTask, BatchDownloadTaskStatus, DownloadTaskStatus, ParameterType (+17 more)

### Community 11 - "Download Artifacts & File System Helpers"
Cohesion: 0.11
Nodes (21): DownloadOpenMode, hasPdfSignature(), isWindowsExplorerDirectoryOpen(), openStudioDownloadArtifact(), pathExists(), resolveStudioDownloadArtifact(), runCommand(), runWindowsShellOpen() (+13 more)

### Community 12 - "Report Adapter Interface & Runner"
Cohesion: 0.14
Nodes (7): ReportAdapter, current, createReportService(), TaskStore, DownloadTask, ReportParameters, ReportService

### Community 13 - "Mock Report Adapter for Testing"
Cohesion: 0.16
Nodes (16): MockReportAdapter, sanitizeFileName(), withTimestamp(), PlaywrightReportAdapter, sanitizeFileName(), withTimestamp(), DownloadReportInput, DownloadReportOutput (+8 more)

### Community 14 - "Browser Launch & Chromium Resolver"
Cohesion: 0.10
Nodes (30): browserLaunchMessage(), DESKTOP_VIEWPORT, existingFile(), firstExisting(), installedBrowserCandidates(), localPlaywrightCandidates(), readRevision(), resolveStudioBrowser() (+22 more)

### Community 15 - "Studio Server & Batch Preset Storage"
Cohesion: 0.10
Nodes (27): BatchMemoryItem, batchMemoryPath, BatchPreset, batchPresetsPath, config, contentType(), delay(), __dirname (+19 more)

### Community 16 - "Chrome DevTools Protocol (CDP) Bridge"
Cohesion: 0.15
Nodes (22): CdpConnectionResult, cdpLaunchArguments(), CdpTabInfo, connectToCdpBrowser(), defaultCdpProfileDir(), delay(), describeCdpTabs(), findChromeExecutable() (+14 more)

### Community 17 - "Debug Storage & Retention Store"
Cohesion: 0.11
Nodes (24): DEFAULT_AI_SETTINGS, DebugCleanupResult, DebugCleanupStatus, debugCleanupStatusPath, debugRoot, DeleteRunsResult, domainList(), isRecordedArticleNavigationDownload() (+16 more)

### Community 18 - "Diagnostics Sanitization & Secret Redaction"
Cohesion: 0.20
Nodes (21): buildAIDebugAnalysisRequest(), redactSecrets(), redactText(), SECRET_KEYS, aggregateFrameText(), buildDiagnosticReadme(), buildFailureDiagnosticZip(), buildFramePath() (+13 more)

### Community 19 - "AI Workflow Draft & Failure Summary"
Cohesion: 0.18
Nodes (19): createAIWorkflowDraft(), readFailurePageSummary(), createEbasExample(), createGenericExample(), findWorkflowStepById(), preflightWorkflowDomains(), runtimeStatus(), selectWorkflowRunSteps() (+11 more)

### Community 20 - "EBAS Report Definitions & Presets"
Cohesion: 0.17
Nodes (21): DEFAULT_EBAS_REPORT, definitionsCache, deleteEbasReportDefinition(), EBAS_BUSINESS_TYPE_OPTIONS, EBAS_LEVEL_OPTIONS, EBAS_OUTPUT_FORMAT_OPTIONS, EBAS_STAGE_OPTIONS, getEbasReportDefinition() (+13 more)

### Community 21 - "Run History Management UI"
Cohesion: 0.17
Nodes (21): applyRunDeleteResult(), captureRunHistoryScrollState(), clearCompletedRuns(), clearRunSelection(), closeRunHistoryDetails(), deleteFilteredRuns(), deleteRunHistoryRecords(), deleteSelectedRuns() (+13 more)

### Community 22 - "AI Debug Failure Analyzer"
Cohesion: 0.17
Nodes (20): AIDebugAnalysisResult, clampInt(), createAIDebugAnalysis(), DOWNLOAD_MODES, limit(), MANUAL_COMPLETION_MODES, MATCH_MODES, normalizePatch() (+12 more)

### Community 23 - "Studio Data Store & Cleanup Eligibility"
Cohesion: 0.21
Nodes (6): isDebugCleanupDue(), nextDebugCleanupEligibleAt(), isRunHistoryCleanupDue(), nextRunHistoryCleanupEligibleAt(), formatFileError(), StudioStore

### Community 24 - "Run Failure Diagnostics & Inspection"
Cohesion: 0.13
Nodes (20): analyzeCurrentRunFailure(), buildRunDebugText(), buildRunHistoryDetailsMarkup(), cancelCurrentRun(), continueCurrentRun(), fileNameFromPath(), formatDebugTime(), formatDebugValue() (+12 more)

### Community 25 - "Workflow Project Exporter & Code Generator"
Cohesion: 0.20
Nodes (16): collectSelectors(), exampleParameters(), ExportService, generatedParameterTypes(), generatedTest(), json(), parameterMarkdown(), portableEntries() (+8 more)

### Community 26 - "Project Dependencies & Package Config"
Cohesion: 0.11
Nodes (18): dependencies, playwright, name, private, scripts, check, demo, dev (+10 more)

### Community 27 - "Chromium Executable & Process Utility"
Cohesion: 0.16
Nodes (12): fileExists(), findLocalPlaywrightChromiumCandidates(), installedChromiumCandidates(), normalizePath(), readChromiumRevision(), resolveChromiumExecutablePath(), config, rl (+4 more)

### Community 28 - "Issue Report & System Diagnostics UI"
Cohesion: 0.16
Nodes (19): buildIssueReportText(), cleanupExpiredDebugNow(), cleanupExpiredRunHistoryNow(), clearIssueReport(), copyIssueReport(), formatByteSize(), formatDate(), issueReportEmail() (+11 more)

### Community 29 - "Browser Interaction Recorder Manager"
Cohesion: 0.27
Nodes (4): normalizeFramePath(), RecorderManager, recorderScript(), validFrameUrl()

### Community 30 - "Recorder UI State & Profile Management"
Cohesion: 0.17
Nodes (18): applyRecorderStatus(), clearBrowserProfile(), clearRecording(), commitRecording(), focusRecorder(), markRecorderSyncError(), pollRecorder(), recorderFramePathList() (+10 more)

### Community 31 - "JSON-RPC Tool Server Protocol"
Cohesion: 0.19
Nodes (12): assertObject(), formatToolError(), handleLine(), JsonRpcRequest, McpToolCallResult, MinimalMcpServer, normalizeBatchItems(), normalizeStringRecord() (+4 more)

### Community 32 - "Workflow Schema & Browser Connection Types"
Cohesion: 0.12
Nodes (16): BatchRow, BrowserConnectionMode, BrowserSettings, CdpInitialPageMode, ConditionRule, FrameRule, LocatorMatchMode, ManualCompletionMode (+8 more)

### Community 33 - "AI Recorder Event Filtering & Selectors"
Cohesion: 0.28
Nodes (14): createAIRecorderProjectId(), applyRecordedEvents(), cssQuotedSelector(), isGoogleCseTemporarySelector(), isRelatedHoverEvent(), normalizeRecordedSelectorPayload(), recordedEventFrameUrl(), recordedEventKind() (+6 more)

### Community 34 - "Run History Retention & Disk Usage"
Cohesion: 0.21
Nodes (12): calculateRunHistoryUsage(), DELETABLE_STATUSES, directorySize(), findExpiredRunHistory(), hasRunDiagnosticData(), isRunHistoryDeletable(), RUN_HISTORY_CLEANUP_INTERVAL_MS, RunHistorySweepCandidates (+4 more)

### Community 35 - "EBAS Authentication & Session Lifecycle"
Cohesion: 0.23
Nodes (3): EbasReportAdapter, listDownloadableEbasReportDefinitions(), toReportDefinition()

### Community 36 - "Batch Preset Import & Normalization"
Cohesion: 0.30
Nodes (12): deleteBatchPreset(), importBatchPresets(), isFileNotFound(), normalizeBatchMemoryItems(), normalizeBatchPresets(), normalizeObject(), normalizeStringRecord(), readBatchMemory() (+4 more)

### Community 37 - "TypeScript Build Configuration"
Cohesion: 0.17
Nodes (11): compilerOptions, esModuleInterop, forceConsistentCasingInFileNames, module, moduleResolution, outDir, rootDir, skipLibCheck (+3 more)

### Community 38 - "EBAS Worker Session & Manual Login"
Cohesion: 0.49
Nodes (11): playwright, resolveEbasWorkerStorageStatePath(), checkWorkerSession(), closeManualLoginSession(), completeManualLogin(), fileExists(), getManualLoginStatus(), looksAuthenticated() (+3 more)

### Community 39 - "Debug Recorder & Content Capture"
Cohesion: 0.36
Nodes (5): contentCapturePlaceholder(), DebugRecorder, sanitizeFileName(), saveDebugArtifacts(), withTimestamp()

### Community 40 - "Debug Retention Sweeper & Directory Cleanup"
Cohesion: 0.33
Nodes (9): DEBUG_CLEANUP_INTERVAL_MS, DebugCleanupSweepResult, directorySize(), listOrphanRunDirectories(), removeEmptyParents(), removeRunDebugDirectory(), resolveSafeDebugPath(), sweepExpiredDebug() (+1 more)

### Community 41 - "Settings & Project Parameter Normalization"
Cohesion: 0.27
Nodes (6): normalizeBrowserSettings(), normalizeParameters(), normalizeProject(), normalizeSettings(), safeId(), slugify()

### Community 42 - "ZIP Archive & CRC32 Utility"
Cohesion: 0.43
Nodes (6): crc32(), crcTable, createZip(), dosTimestamp(), normalizeName(), ZipEntry

### Community 43 - "Atomic File I/O & JSON Persistence"
Cohesion: 0.40
Nodes (5): safeRunRecordPath(), enqueueJsonWrite(), fileErrorCode(), renameWithRetry(), writeJsonAtomic()

### Community 44 - "System Settings Range Clamping"
Cohesion: 0.83
Nodes (4): clampSystemInteger(), isSettingsRecord(), normalizeAISettings(), normalizeSystemSettings()

## Knowledge Gaps
- **138 isolated node(s):** `name`, `version`, `private`, `type`, `playwright` (+133 more)
  These have ≤1 connection - possible missing edges. (Counts symbols only; 155 node(s) total have ≤1 connection when file, concept and rationale nodes are included.)

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `createStudioRouter()` connect `AI Workflow Draft & Failure Summary` to `Flow Execution & Event Logging`, `AI Recorder Event Filtering & Selectors`, `AI Provider Configuration & Secrets`, `Run History Retention & Disk Usage`, `EBAS Worker Session & Manual Login`, `AI Website Exploration Engine`, `AI Workflow Generator & Draft Diffing`, `Settings & Project Parameter Normalization`, `Download Artifacts & File System Helpers`, `Atomic File I/O & JSON Persistence`, `Studio Server & Batch Preset Storage`, `Chrome DevTools Protocol (CDP) Bridge`, `Diagnostics Sanitization & Secret Redaction`, `AI Debug Failure Analyzer`, `Studio Data Store & Cleanup Eligibility`, `Workflow Project Exporter & Code Generator`, `Browser Interaction Recorder Manager`?**
  _High betweenness centrality (0.035) - this node is a cross-community bridge._
- **Why does `playwright` connect `EBAS Worker Session & Manual Login` to `Flow Execution & Event Logging`, `EBAS Authentication & Session Lifecycle`, `EBAS Report Adapter & Verification`, `Mock Report Adapter for Testing`, `Browser Launch & Chromium Resolver`, `Studio Server & Batch Preset Storage`, `AI Workflow Draft & Failure Summary`, `Project Dependencies & Package Config`?**
  _High betweenness centrality (0.027) - this node is a cross-community bridge._
- **Why does `FlowError` connect `EBAS Report Adapter & Verification` to `EBAS Authentication & Session Lifecycle`, `Debug Recorder & Content Capture`, `Batch Download Types & Result Schema`, `Report Adapter Interface & Runner`, `Mock Report Adapter for Testing`, `JSON-RPC Tool Server Protocol`?**
  _High betweenness centrality (0.023) - this node is a cross-community bridge._
- **Are the 82 inferred relationships involving `bindActions()` (e.g. with `acceptAIWorkflowRevision()` and `acceptAndApplyAIWorkflowRevision()`) actually correct?**
  _`bindActions()` has 82 INFERRED edges - model-reasoned connections that need verification._
- **Are the 37 inferred relationships involving `createStudioRouter()` (e.g. with `.diagnoseProvider()` and `.generate()`) actually correct?**
  _`createStudioRouter()` has 37 INFERRED edges - model-reasoned connections that need verification._
- **What connects `name`, `version`, `private` to the rest of the system?**
  _138 weakly-connected nodes found - possible documentation gaps or missing edges._
- **Should `Flow Execution & Event Logging` be split into smaller, more focused modules?**
  _Cohesion score 0.0580469811687051 - nodes in this community are weakly interconnected._