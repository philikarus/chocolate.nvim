vim.cmd 'highlight clear'
vim.cmd 'syntax reset'
vim.g.colors_name = 'chocolate'

local colors = require('chocolate.palette').base_30
local theme = require('chocolate.palette').base_16

local bold, italic, underline, undercurl, strikethrough
if vim.g.chocolate_enable_font_variants == true or vim.g.chocolate_enable_font_variants == nil then
  --- Enable all font attributes by default
  bold = true
  italic = true
  underline = true
  undercurl = true
  strikethrough = true
elseif type(vim.g.chocolate_enable_font_variants) == 'table' then
  --- Enable only selected font attributes
  bold = vim.g.chocolate_enable_font_variants.bold
  italic = vim.g.chocolate_enable_font_variants.italic
  underline = vim.g.chocolate_enable_font_variants.underline
  undercurl = vim.g.chocolate_enable_font_variants.undercurl
  strikethrough = vim.g.chocolate_enable_font_variants.strikethrough
end

for name, attrs in pairs {
  -- defualt
  Added = { fg = colors.green },
  Removed = { fg = colors.red },
  Changed = { fg = colors.yellow },
  MatchWord = { bg = colors.grey, fg = colors.white },
  Pmenu = { bg = colors.one_bg },
  PmenuSbar = { bg = colors.one_bg },
  PmenuSel = { bg = colors.pmenu_bg, fg = colors.black },
  PmenuThumb = { bg = colors.grey },
  MatchParen = { link = 'MatchWord' },
  Comment = { fg = colors.light_grey },
  CursorLineNr = { fg = colors.white },
  LineNr = { fg = colors.grey },
  FloatBorder = { fg = colors.blue },
  FloatTitle = { fg = colors.white, bg = colors.grey },
  NormalFloat = { bg = colors.darker_black },
  NvimInternalError = { fg = colors.red },
  WinSeparator = { fg = colors.line },
  Normal = { fg = theme.base05, bg = theme.base00 },
  DevIconDefault = { fg = colors.red },
  Debug = { fg = theme.base08 },
  Directory = { fg = theme.base0D },
  Error = { fg = theme.base00, bg = theme.base08 },
  ErrorMsg = { fg = theme.base08, bg = theme.base00 },
  Exception = { fg = theme.base08 },
  FoldColumn = { bg = 'none' },
  Folded = { fg = colors.light_grey, bg = colors.black2 },
  IncSearch = { fg = theme.base01, bg = theme.base09 },
  Macro = { fg = theme.base08 },
  ModeMsg = { fg = theme.base0B },
  MoreMsg = { fg = theme.base0B },
  Question = { fg = theme.base0D },
  Search = { fg = theme.base01, bg = theme.base0A },
  Substitute = { fg = theme.base01, bg = theme.base0A },
  SpecialKey = { fg = theme.base03 },
  TooLong = { fg = theme.base08 },
  Visual = { bg = theme.base02 },
  VisualNOS = { fg = theme.base08 },
  WarningMsg = { fg = theme.base08 },
  WildMenu = { fg = theme.base08, bg = theme.base0A },
  Title = { fg = theme.base0D },
  Conceal = { bg = 'NONE' },
  Cursor = { fg = theme.base00, bg = theme.base05 },
  NonText = { fg = theme.base03 },
  SignColumn = { fg = theme.base03 },
  ColorColumn = { bg = colors.black2 },
  CursorColumn = { bg = theme.base01 },
  CursorLine = { bg = colors.black2 },
  QuickFixLine = { bg = theme.base01 },
  healthSuccess = { bg = colors.green, fg = colors.black },
  WinBar = { bg = 'NONE' },
  WinBarNC = { bg = 'NONE' },

  -- syntax
  Boolean = { fg = theme.base09 },
  Character = { fg = theme.base08 },
  Conditional = { fg = theme.base0E },
  Constant = { fg = theme.base09 },
  Define = { fg = theme.base0E, sp = 'none' },
  Delimiter = { fg = theme.base0F },
  Float = { fg = theme.base09 },
  Variable = { fg = theme.base05 },
  Function = { fg = theme.base0D },
  Identifier = { fg = theme.base08, sp = 'none' },
  Include = { fg = theme.base0D },
  Keyword = { fg = theme.base0E },
  Label = { fg = theme.base0A },
  Number = { fg = theme.base09 },
  Operator = { fg = theme.base05, sp = 'none' },
  PreProc = { fg = theme.base0A },
  Repeat = { fg = theme.base0A },
  Special = { fg = theme.base0C },
  SpecialChar = { fg = theme.base0F },
  Statement = { fg = theme.base08 },
  StorageClass = { fg = theme.base0A },
  String = { fg = theme.base0B },
  Structure = { fg = theme.base0E },
  Tag = { fg = theme.base0A },
  Todo = { fg = theme.base0A, bg = theme.base01 },
  Type = { fg = theme.base0A, sp = 'none' },
  Typedef = { fg = theme.base0A },

  -- Mason
  MasonHeader = { bg = colors.red, fg = colors.black },
  MasonHighlight = { fg = colors.blue },
  MasonHighlightBlock = { fg = colors.black, bg = colors.green },
  MasonHighlightBlockBold = { link = 'MasonHighlightBlock' },
  MasonHeaderSecondary = { link = 'MasonHighlightBlock' },
  MasonMuted = { fg = colors.light_grey },
  MasonMutedBlock = { fg = colors.light_grey, bg = colors.one_bg },

  -- Bufferline
  -- BufferLineBackground = {
  --   fg = colors.light_grey,
  --   bg = colors.black2,
  -- },

  -- BufferlineIndicatorVisible = {
  --   fg = colors.black2,
  --   bg = colors.black2,
  -- },

  -- buffers
  -- BufferLineBufferSelected = {
  --   fg = colors.white,
  --   bg = colors.black,
  -- },

  -- BufferLineBufferVisible = {
  --   fg = colors.light_grey,
  --   bg = colors.black2,
  -- },

  -- -- for diagnostics = "nvim_lsp"
  -- BufferLineError = {
  --   fg = colors.light_grey,
  --   bg = colors.black2,
  -- },
  -- BufferLineErrorDiagnostic = {
  --   fg = colors.light_grey,
  --   bg = colors.black2,
  -- },

  -- -- close buttons
  -- BufferLineCloseButton = {
  --   fg = colors.light_grey,
  --   bg = colors.black2,
  -- },
  -- BufferLineCloseButtonVisible = {
  --   fg = colors.light_grey,
  --   bg = colors.black2,
  -- },
  -- BufferLineCloseButtonSelected = {
  --   fg = colors.red,
  --   bg = colors.black,
  -- },
  BufferLineFill = {
    fg = colors.grey_fg,
    bg = colors.black2,
  },
  -- BufferlineIndicatorSelected = {
  --   fg = colors.black,
  --   bg = colors.black,
  -- },

  -- -- modified
  -- BufferLineModified = {
  --   fg = colors.red,
  --   bg = colors.black2,
  -- },
  -- BufferLineModifiedVisible = {
  --   fg = colors.red,
  --   bg = colors.black2,
  -- },
  -- BufferLineModifiedSelected = {
  --   fg = colors.green,
  --   bg = colors.black,
  -- },

  -- -- separators
  -- BufferLineSeparator = {
  --   fg = colors.black2,
  --   bg = colors.black2,
  -- },
  -- BufferLineSeparatorVisible = {
  --   fg = colors.black2,
  --   bg = colors.black2,
  -- },
  -- BufferLineSeparatorSelected = {
  --   fg = colors.black2,
  --   bg = colors.black2,
  -- },

  -- -- tabs
  -- BufferLineTab = {
  --   fg = colors.light_grey,
  --   bg = colors.one_bg3,
  -- },
  -- BufferLineTabSelected = {
  --   fg = colors.black2,
  --   bg = colors.nord_blue,
  -- },
  -- BufferLineTabClose = {
  --   fg = colors.red,
  --   bg = colors.black,
  -- },

  -- BufferLineDevIconDefaultSelected = {
  --   bg = 'none',
  -- },

  -- BufferLineDevIconDefaultInactive = {
  --   bg = 'none',
  -- },

  -- BufferLineDuplicate = {
  --   fg = 'NONE',
  --   bg = colors.black2,
  -- },
  -- BufferLineDuplicateSelected = {
  --   fg = colors.red,
  --   bg = colors.black,
  -- },
  -- BufferLineDuplicateVisible = {
  --   fg = colors.blue,
  --   bg = colors.black2,
  -- },

  -- -- custom area
  -- BufferLineRightCustomAreaText1 = {
  --   fg = colors.white,
  -- },

  -- BufferLineRightCustomAreaText2 = {
  --   fg = colors.red,
  -- },

  -- Dap
  DapBreakpoint = { fg = colors.red },
  DapBreakpointCondition = { fg = colors.yellow },
  DapBreakPointRejected = { fg = colors.orange },
  DapLogPoint = { fg = colors.cyan },
  DapStopped = { fg = colors.baby_pink },

  -- DapUI
  DAPUIScope = { fg = colors.cyan },
  DAPUIType = { fg = colors.dark_purple },
  DAPUIValue = { fg = colors.cyan },
  DAPUIVariable = { fg = colors.white },
  DapUIModifiedValue = { fg = colors.orange },
  DapUIDecoration = { fg = colors.cyan },
  DapUIThread = { fg = colors.green },
  DapUIStoppedThread = { fg = colors.cyan },
  DapUISource = { fg = colors.lavender },
  DapUILineNumber = { fg = colors.cyan },
  DapUIFloatBorder = { fg = colors.cyan },

  DapUIWatchesEmpty = { fg = colors.baby_pink },
  DapUIWatchesValue = { fg = colors.green },
  DapUIWatchesError = { fg = colors.baby_pink },

  DapUIBreakpointsPath = { fg = colors.cyan },
  DapUIBreakpointsInfo = { fg = colors.green },
  DapUIBreakPointsCurrentLine = { fg = colors.green, bold = true },
  DapUIBreakpointsDisabledLine = { fg = colors.grey_fg2 },

  DapUIStepOver = { fg = colors.blue },
  DapUIStepOverNC = { fg = colors.blue },
  DapUIStepInto = { fg = colors.blue },
  DapUIStepIntoNC = { fg = colors.blue },
  DapUIStepBack = { fg = colors.blue },
  DapUIStepBackNC = { fg = colors.blue },
  DapUIStepOut = { fg = colors.blue },
  DapUIStepOutNC = { fg = colors.blue },
  DapUIStop = { fg = colors.red },
  DapUIStopNC = { fg = colors.red },
  DapUIPlayPause = { fg = colors.green },
  DapUIPlayPauseNC = { fg = colors.green },
  DapUIRestart = { fg = colors.green },
  DapUIRestartNC = { fg = colors.green },
  DapUIUnavailable = { fg = colors.grey_fg },
  DapUIUnavailableNC = { fg = colors.grey_fg },

  -- Edgy
  EdgyNormal = { fg = colors.white },
  EdgyWinBar = { fg = colors.white },
  EdgyWinBarInactive = { fg = colors.white },

  -- Flash
  FlashMatch = { fg = colors.black, bg = colors.blue },
  FlashCurrent = { fg = colors.black, bg = colors.green },
  FlashLabel = { fg = colors.white, bold = true },

  -- Git
  diffOldFile = {
    fg = colors.baby_pink,
  },

  diffNewFile = {
    fg = colors.blue,
  },

  DiffAdd = {
    bg = colors.green,
    fg = colors.green,
  },

  DiffAdded = {
    bg = colors.green,
    fg = colors.green,
  },

  DiffChange = {
    bg = colors.light_grey,
    fg = colors.light_grey,
  },

  DiffChangeDelete = {
    bg = colors.red,
    fg = colors.red,
  },

  DiffModified = {
    bg = colors.orange,
    fg = colors.orange,
  },

  DiffDelete = {
    bg = colors.red,
    fg = colors.red,
  },

  DiffRemoved = {
    bg = colors.red,
    fg = colors.red,
  },

  DiffText = {
    fg = colors.white,
    bg = colors.black2,
  },

  -- git commits
  gitcommitOverflow = {
    fg = theme.base08,
  },

  gitcommitSummary = {
    fg = theme.base0B,
  },

  gitcommitComment = {
    fg = theme.base03,
  },

  gitcommitUntracked = {
    fg = theme.base03,
  },

  gitcommitDiscarded = {
    fg = theme.base03,
  },

  gitcommitSelected = {
    fg = theme.base03,
  },

  gitcommitHeader = {
    fg = theme.base0E,
  },

  gitcommitSelectedType = {
    fg = theme.base0D,
  },

  gitcommitUnmergedType = {
    fg = theme.base0D,
  },

  gitcommitDiscardedType = {
    fg = theme.base0D,
  },

  gitcommitBranch = {
    fg = theme.base09,
    bold = true,
  },

  gitcommitUntrackedFile = {
    fg = theme.base0A,
  },

  gitcommitUnmergedFile = {
    fg = theme.base08,
    bold = true,
  },

  gitcommitDiscardedFile = {
    fg = theme.base08,
    bold = true,
  },

  gitcommitSelectedFile = {
    fg = theme.base0B,
    bold = true,
  },

  -- grug-far
  GrugFarResultsMatch = { link = 'DiffChange' },
  GrugFarResultsMatchAdded = { link = 'DiffAdd' },
  GrugFarResultsMatchRemoved = { link = 'DiffDelete' },

  -- LSP References
  LspReferenceText = { bg = colors.one_bg3 },
  LspReferenceRead = { bg = colors.one_bg3 },
  LspReferenceWrite = { bg = colors.one_bg3 },

  -- Lsp Diagnostics
  DiagnosticHint = { fg = colors.purple },
  DiagnosticError = { fg = colors.red },
  DiagnosticWarn = { fg = colors.yellow },
  DiagnosticInfo = { fg = colors.green },
  LspSignatureActiveParameter = { fg = colors.black, bg = colors.green },

  LspInlayHint = {
    bg = colors.black2,
    fg = colors.light_grey,
  },

  -- Notify
  NotifyERRORBorder = { fg = colors.red },
  NotifyERRORIcon = { fg = colors.red },
  NotifyERRORTitle = { fg = colors.red },
  NotifyWARNBorder = { fg = colors.orange },
  NotifyWARNIcon = { fg = colors.orange },
  NotifyWARNTitle = { fg = colors.orange },
  NotifyINFOBorder = { fg = colors.green },
  NotifyINFOIcon = { fg = colors.green },
  NotifyINFOTitle = { fg = colors.green },
  NotifyDEBUGBorder = { fg = colors.grey },
  NotifyDEBUGIcon = { fg = colors.grey },
  NotifyDEBUGTitle = { fg = colors.grey },
  NotifyTRACEBorder = { fg = colors.purple },
  NotifyTRACEIcon = { fg = colors.purple },
  NotifyTRACETitle = { fg = colors.purple },

  -- Telescope
  TelescopePromptPrefix = {
    fg = colors.red,
    bg = colors.black2,
  },

  TelescopeNormal = { bg = colors.darker_black },

  TelescopePreviewTitle = {
    fg = colors.black,
    bg = colors.green,
  },

  TelescopePromptTitle = {
    fg = colors.black,
    bg = colors.red,
  },

  TelescopeSelection = { bg = colors.black2, fg = colors.white },
  TelescopeResultsDiffAdd = { fg = colors.green },
  TelescopeResultsDiffChange = { fg = colors.yellow },
  TelescopeResultsDiffDelete = { fg = colors.red },

  TelescopeMatching = { bg = colors.one_bg, fg = colors.blue },

  TelescopeBorder = { fg = colors.one_bg3 },
  TelescopePromptBorder = { fg = colors.one_bg3 },
  TelescopeResultsTitle = { fg = colors.black, bg = colors.green },
  TelescopePromptNormal = { bg = colors.black },

  -- Treesitter
  ['@variable'] = { fg = theme.base05 },
  ['@variable.builtin'] = { fg = theme.base09 },
  ['@variable.parameter'] = { fg = theme.base08 },
  ['@variable.member'] = { fg = theme.base08 },
  ['@variable.member.key'] = { fg = theme.base08 },

  ['@module'] = { fg = theme.base08 },
  -- ["@module.builtin"] = { fg = theme.base08 },

  ['@constant'] = { fg = theme.base09 },
  ['@constant.builtin'] = { fg = theme.base09 },
  ['@constant.macro'] = { fg = theme.base08 },

  ['@string'] = { fg = theme.base0B },
  ['@string.regex'] = { fg = theme.base0C },
  ['@string.escape'] = { fg = theme.base0C },
  ['@character'] = { fg = theme.base08 },
  -- ["@character.special"] = { fg = theme.base08 },
  ['@number'] = { fg = theme.base09 },
  ['@number.float'] = { fg = theme.base09 },

  ['@annotation'] = { fg = theme.base0F },
  ['@attribute'] = { fg = theme.base0A },
  ['@error'] = { fg = theme.base08 },

  ['@keyword.exception'] = { fg = theme.base08 },
  ['@keyword'] = { fg = theme.base0E },
  ['@keyword.function'] = { fg = theme.base0E },
  ['@keyword.return'] = { fg = theme.base0E },
  ['@keyword.operator'] = { fg = theme.base0E },
  ['@keyword.import'] = { link = 'Include' },
  ['@keyword.conditional'] = { fg = theme.base0E },
  ['@keyword.conditional.ternary'] = { fg = theme.base0E },
  ['@keyword.repeat'] = { fg = theme.base0A },
  ['@keyword.storage'] = { fg = theme.base0A },
  ['@keyword.directive.define'] = { fg = theme.base0E },
  ['@keyword.directive'] = { fg = theme.base0A },

  ['@function'] = { fg = theme.base0D },
  ['@function.builtin'] = { fg = theme.base0D },
  ['@function.macro'] = { fg = theme.base08 },
  ['@function.call'] = { fg = theme.base0D },
  ['@function.method'] = { fg = theme.base0D },
  ['@function.method.call'] = { fg = theme.base0D },
  ['@constructor'] = { fg = theme.base0C },

  ['@operator'] = { fg = theme.base05 },
  ['@reference'] = { fg = theme.base05 },
  ['@punctuation.bracket'] = { fg = theme.base0F },
  ['@punctuation.delimiter'] = { fg = theme.base0F },
  ['@symbol'] = { fg = theme.base0B },
  ['@tag'] = { fg = theme.base0A },
  ['@tag.attribute'] = { fg = theme.base08 },
  ['@tag.delimiter'] = { fg = theme.base0F },
  ['@text'] = { fg = theme.base05 },
  ['@text.emphasis'] = { fg = theme.base09 },
  ['@text.strike'] = { fg = theme.base0F, strikethrough = true },
  ['@type.builtin'] = { fg = theme.base0A },
  ['@definition'] = { sp = theme.base04, underline = true },
  ['@scope'] = { bold = true },
  ['@property'] = { fg = theme.base08 },

  -- markup
  ['@markup.heading'] = { fg = theme.base0D },
  ['@markup.raw'] = { fg = theme.base09 },
  ['@markup.link'] = { fg = theme.base08 },
  ['@markup.link.url'] = { fg = theme.base09, underline = true },
  ['@markup.link.label'] = { fg = theme.base0C },
  ['@markup.list'] = { fg = theme.base08 },
  ['@markup.strong'] = { bold = true },
  ['@markup.underline'] = { underline = true },
  ['@markup.italic'] = { italic = true },
  ['@markup.strikethrough'] = { strikethrough = true },
  ['@markup.quote'] = { bg = colors.black2 },

  ['@comment'] = { fg = colors.grey_fg },
  ['@comment.todo'] = { fg = colors.grey, bg = colors.white },
  ['@comment.warning'] = { fg = colors.black2, bg = theme.base09 },
  ['@comment.note'] = { fg = colors.black, bg = colors.blue },
  ['@comment.danger'] = { fg = colors.black2, bg = colors.red },

  ['@diff.plus'] = { fg = colors.green },
  ['@diff.minus'] = { fg = colors.red },
  ['@diff.delta'] = { fg = colors.light_grey },

  -- which-key
  WhichKey = { fg = colors.blue },
  WhichKeySeparator = { fg = colors.light_grey },
  WhichKeyDesc = { fg = colors.red },
  WhichKeyGroup = { fg = colors.green },
  WhichKeyValue = { fg = colors.green },
} do
  if type(attrs) == 'table' then
    vim.api.nvim_set_hl(0, name, attrs)
  else
    vim.api.nvim_set_hl(0, name, { link = attrs })
  end
end
