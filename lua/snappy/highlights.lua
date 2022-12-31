local highlight = {
  NormalPopupPrompt     = {fg = C.fg_highlight,    bg = C.bg_popup,    style = "bold"},
  NormalPopupSubtle     = {fg = C.ui_6,            bg = C.bg_popup},
  NormalFloat           = {fg = C.fg,              bg = C.bg,          style = "bold"},
  Normal                = {fg = C.ui_1,            bg = "NONE"},
  NormalPopup           = {fg = C.fg_highlight,    bg = C.bg_popup},
  NormalPopover         = {fg = C.fg_highlight,    bg = C.bg_popup},
  cursorim              = {fg = C.ui_12,           bg = C.blue},
  TabLine               = {fg = C.ui_2,            bg = C.ui_9},
  DiffAdd               = {fg = C.green,           bg = C.ui_9},
  Underlined            = {fg = C.ui_1,            bg = C.ui_12},
  Macro                 = {fg = C.yellow,          bg = "NONE"},
  Structure             = {fg = C.blue,            bg = "NONE"},
  Directory             = {fg = C.ui_8,            bg = "NONE"},
  CTagsClass            = {fg = C.ui_3,            bg = "NONE"},
  Repeat                = {fg = C.green,           bg = "NONE"},
  MatchParen            = {fg = "NONE",            bg = C.ui_8},
  String                = {fg = C.yellow,          bg = "NONE"},
  Tag                   = {fg = C.yellow,          bg = "NONE"},
  Constant              = {fg = C.green,           bg = "NONE"},
  SpecialKey            = {fg = C.ui_7,            bg = "NONE"},
  Error                 = {fg = C.red,             bg = C.ui_10},
  SpellBad              = {fg = C.red,             bg = "NONE",        style = "underline"},
  SpellLocal            = {fg = C.ui_1,            bg = C.ui_12},
  SpellCap              = {fg = C.ui_1,            bg = C.ui_12},
  SpellRare             = {fg = C.ui_1,            bg = C.ui_12},
  Cursor                = {fg = C.ui_12,           bg = C.ui_0},
  DiffChange            = {fg = C.ui_3,            bg = C.ui_9},
  Type                  = {fg = C.cyan,            bg = "NONE",        style = "bold"},
  Keyword               = {fg = C.magenta,         bg = "NONE",        style = "bold"},
  Exception             = {fg = C.red,             bg = "NONE"},
  VertSplit             = {fg = C.ui_8,            bg = "NONE",        style = "bold"},
  MoreMsg               = {fg = C.yellow,          bg = "NONE"},
  PreProc               = {fg = C.red,             bg = "NONE"},
  FoldColumn            = {fg = C.ui_12,           bg = C.ui_4},
  Function              = {fg = C.blue,            bg = "NONE",        style = "bold"},
  Define                = {fg = C.yellow,          bg = "NONE"},
  CursorColumn          = {fg = C.ui_3,            bg = C.ui_9},
  ModeMsg               = {fg = C.ui_0,            bg = C.ui_12},
  DiffDelete            = {fg = C.magenta,         bg = C.ui_9},
  VisualNOS             = {fg = C.ui_12,           bg = C.ui_1},
  WarningMsg            = {fg = C.red,             bg = C.ui_10},
  TabLineFill           = {fg = C.ui_12,           bg = C.ui_9},
  CursorLineNR          = {fg = C.yellow,          bg = "NONE"},
  ColorColumn           = {fg = "NONE",            bg = C.ui_9},
  CursorLine            = {fg = "NONE",            bg = C.ui_9},
  Operator              = {fg = C.magenta,         bg = "NONE"},
  Boolean               = {fg = C.ui_3,            bg = "NONE"},
  Number                = {fg = C.purple,          bg = "NONE"},
  TabLineSel            = {fg = C.ui_2,            bg = C.ui_10},
  Character             = {fg = C.ui_3,            bg = "NONE"},
  Comment               = {fg = C.ui_8,            bg = "NONE",        style = "italic"},
  Statement             = {fg = C.magenta,         bg = "NONE"},
  Delimiter             = {fg = C.ui_3,            bg = "NONE"},
  Search                = {fg = C.ui_10,           bg = C.yellow},
  Label                 = {fg = C.yellow,          bg = "NONE"},
  StatusLine            = {fg = C.ui_9,            bg = C.ui_9},
  LineNr                = {fg = C.ui_8,            bg = "NONE"},
  Special               = {fg = C.yellow,          bg = "NONE"},
  Todo                  = {fg = C.yellow,          bg = "NONE"},
  StorageClass          = {fg = C.blue,            bg = "NONE"},
  Conditional           = {fg = C.yellow,          bg = "NONE"},
  SpecialChar           = {fg = C.yellow,          bg = "NONE"},
  Identifier            = {fg = C.cyan,            bg = "NONE"},
  Debug                 = {fg = C.yellow,          bg = "NONE"},
  ErrorMsg              = {fg = C.red,             bg = C.ui_10},
  DiffText              = {fg = C.red,             bg = C.ui_9},
  NonText               = {fg = C.ui_7,            bg = "NONE"},
  StatusLineNC          = {fg = C.ui_9,            bg = C.ui_9},
  Float                 = {fg = C.ui_4,            bg = "NONE"},
  Include               = {fg = C.yellow,          bg = "NONE"},
  PreCondit             = {fg = C.yellow,          bg = "NONE"},
  Folded                = {fg = C.ui_12,           bg = C.ui_4},
  Title                 = {fg = C.yellow,          bg = "NONE"},
  Typedef               = {fg = C.blue,            bg = "NONE"},
  SpecialComment        = {fg = C.yellow,          bg = "NONE"},
  SignColumn            = {fg = C.ui_12,           bg = Config.transparent_background and "NONE" or C.ui_10},
  WildMenu              = {fg = "NONE",            bg = C.ui_4},
  IncSearch             = {fg = C.ui_10,           bg = C.yellow},
  Visual                = {fg = "NONE",            bg = C.bg_visual},
  VisualBold            = {fg = "NONE",            bg = C.bg_visual,   style = "bold"},
  -- Pmenu              = {fg = C.fg,              bg = C.bg_popup},
  Pmenu                 = {fg = C.pmenu_fg,        bg = C.pmenu_bg},
  PmenuSel              = {fg = C.pmenusel_fg,     bg = C.pmenusel_bg, style = "bold"},
  PmenuSelBold          = {fg = C.highlight_color, bg = C.highlight,   style = "bold"},
  PmenuSbar             = {fg = "NONE",            bg = C.bg_alt},
  PmenuThumb            = {fg = C.pmenu_thumb,     bg = C.pmenu_thumb},
  Section               = {fg = C.magenta,         bg = "NONE",        style = "bold"},
  JumpTarget            = {fg = C.red,                                 style = "bold"},
  -- MsgArea            = {fg = ,                  bg = ,              style = },
  -- MsgSeparator       = {fg = ,                  bg = ,              style = },
  -- NormalNC           = {fg = ,                  bg = ,              style = },
  -- FloatBorder        = {fg = ,                  bg = ,              style = },
  -- Whitespace         = {fg = ,                  bg = ,              style = },
  -- QuickFixLine       = {fg = ,                  bg = ,              style = },
  -- MatchWord          = {fg = ,                  bg = ,              style = },
  -- MatchWordCur       = {fg = ,                  bg = ,              style = },
  -- MatchParenCur      = {fg = ,                  bg = ,              style = },
  -- lCursor            = {fg = ,                  bg = ,              style = },
  -- TermCursor         = {fg = ,                  bg = ,              style = },
  -- TermCursorNC       = {fg = ,                  bg = ,              style = },
  Conceal               = {fg = C.blue,            bg = "NONE"},
  -- Substitute         = {fg = ,                  bg = ,              style = },
  -- Question           = {fg = ,                  bg = ,              style = },
  -- EndOfBuffer        = {fg = ,                  bg = ,              style = },
  -- Variable           = {fg = ,                  bg = ,              style = },
  -- Bold               = {fg = ,                  bg = ,              style = },
  -- Italic             = {fg = ,                  bg = ,              style = },
  -- Ignore             = {fg = ,                  bg = ,              style = },
  TelescopeBorder       = {fg = C.ui_11,           bg = C.ui_11},
  TelescopePromptBorder = {fg = C.ui_10,           bg = C.ui_10},
  TelescopePromptNormal = {fg = C.white,           bg = C.ui_10},
  TelescopePromptPrefix = {fg = C.red,             bg = C.ui_10},
  TelescopeNormal       = {                        bg = C.ui_11},
  TelescopePreviewTitle = {fg = C.ui_9,            bg = C.green},
  TelescopePromptTitle  = {fg = C.ui_11,           bg = C.red},
  TelescopeResultsTitle = {fg = C.ui_11,           bg = C.ui_11},
  TelescopeSelection    = {                        bg =  C.ui_10},
  NotifyERRORBody       = {                        bg = "NONE"},
  NotifyWARNBody        = {                        bg = "NONE"},
  NotifyINFOBody        = {                        bg = "NONE"},
  NotifyDEBUGBody       = {                        bg = "NONE"},
  NotifyTRACEBody       = {                        bg = "NONE"},
  NotifyBackground       = { fg = "NONE",                       bg = "NONE"},
  texTitleArg           = {fg = C.fg,              bg = "NONE"}
}
return highlight
