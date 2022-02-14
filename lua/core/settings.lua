local M = {}

M.load_options = function()
  local opt = vim.opt

  local default_options = {
    fillchars='eob: ',
    backup = false, -- creates a backup file
    clipboard = "unnamedplus", -- allows neovim to access the system clipboard
    cmdheight = 1, -- more space in the neovim command line for displaying messages
    colorcolumn = "99999", -- fixes indentline for now
    completeopt = {"menuone", "noselect"},
    conceallevel = 0, -- so that `` is visible in markdown files
    fileencoding = "utf-8", -- the encoding written to a file
    foldmethod = "manual", -- folding, set to "expr" for treesitter based folding
    foldexpr = "", -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
    guifont = "JetBrains Mono:h11", -- the font used in graphical neovim applications
    hidden = true, -- required to keep multiple buffers and open multiple buffers
    hlsearch = true, -- highlight all matches on previous search pattern
    ignorecase = true, -- ignore case in search patterns
    mouse = "a", -- allow the mouse to be used in neovim
    pumheight = 10, -- pop up menu height
    showmode = false, -- we don't need to see things like -- INSERT -- anymore
    showtabline = 2, -- always show tabs
    smartcase = true, -- smart case
    smartindent = true, -- make indenting smarter again
    splitbelow = true, -- force all horizontal splits to go below current window
    splitright = true, -- force all vertical splits to go to the right of current window
    swapfile = false, -- creates a swapfile
    termguicolors = true, -- set term gui colors (most terminals support this)
    timeoutlen = 500, -- time to wait for a mapped sequence to complete (in milliseconds)
    title = true, -- set the title of window to the value of the titlestring
    -- opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
    undodir = "/home/peter/.cache/nvim/undo", -- set an undo directory
    undofile = true, -- enable persistent undo
    updatetime = 300, -- faster completion
    writebackup = false, -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
    expandtab = true, -- convert tabs to spaces
    shiftwidth = 2, -- the number of spaces inserted for each indentation
    tabstop = 2, -- insert 2 spaces for a tab
    cursorline = true, -- highlight the current line
    number = true, -- set numbered lines
    relativenumber = true, -- set relative numbered lines
    numberwidth = 4, -- set number column width to 2 {default 4}
    signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
    wrap = true, -- display long lines with wrap
    linebreak = true, -- set the title of window to the value of the titlestring
    spell = false,
    spelllang = "en",
    scrolloff = 8, -- is one of my fav
    sidescrolloff = 8,
    pumblend = 10,
    winblend = 10,
    inccommand = "nosplit"
  } ---  VIM ONLY COMMANDS  ---cmd "filetype plugin on"cmd('let &titleold="' .. TERMINAL .. '"')cmd "set inccommand=split"cmd "set iskeyword+=-"

  ---  SETTINGS  ---

  opt.shortmess:append "c"
  opt.iskeyword:append "-"

  for k, v in pairs(default_options) do vim.opt[k] = v end
end

M.load_autocmds = function()
  vim.cmd([[
    " This function does the following:
    " <>|<>  with <cr> to get
    " <>
    "    |
    " <>
    " function! Expander()
    "   let line   = getline(".")
    "   let col    = col(".")
    "   let first  = line[col-2]
    "   let second = line[col-1]
    "   let third  = line[col]

    "   if first ==# ">"
    "     if second ==# "<" && third ==# "/"
    "       return "\<CR>\<C-o>==\<C-o>O"

    "     else
    "       return "\<CR>"

    "     endif

    "   else
    "     return "\<CR>"

    "   endif

    " endfunction

    " autocmd FileType html inoremap <expr> <CR> Expander()

    au BufRead *.vim setlocal foldmethod=marker
    autocmd Filetype lua setlocal foldmethod=marker
    autocmd TermOpen * startinsert


    au FileType vim setlocal fo-=c fo-=r fo-=o

    " Remove trailing whitespaces automatically before save
    " augroup strip_ws
    "   autocmd BufWritePre * call utils#stripTrailingWhitespaces()
    " augroup END

    " save cursor's last position
    autocmd BufReadPost * if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'  |   exe "normal! g`\""  | endif

    " for eslint
    "autocmd BufWritePre <buffer> <cmd>EslintFixAll<CR>

    let g:neovide_transparency=0.8
  ]])
end

return M
