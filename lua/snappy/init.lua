vim.api.nvim_command "hi clear"
if vim.fn.exists "syntax_on" then
  vim.api.nvim_command "syntax reset"
end
vim.o.background = "dark"
vim.o.termguicolors = true
vim.g.colors_name = "snappy"

local util = require "snappy.util"
--Config = require "snappy.config"
C = require "snappy.palette"
Config = {}
Config.transparent_background = true
local highlights = require "snappy.highlights"
local Treesitter = require "snappy.Treesitter"
-- local markdown = require "snappy.markdown"
-- local Whichkey = require "snappy.Whichkey"
local Git = require "snappy.Git"
local tabbar = require "snappy.tabbar"
local css = require "snappy.css"
local LSP = require "snappy.LSP"

local skeletons = {
  highlights,
  tabbar,
  Treesitter,
  css,
  --markdown,
  --Whichkey,
  Git,
  LSP,
}

local link_skeleton = require("snappy.links")

for _, skeleton in ipairs(skeletons) do
  util.initialise(skeleton)
end

util.hi_link(link_skeleton)

vim.cmd([[
highlight IndentBlanklineContextChar guifg=#848688 gui=nocombine
hi PmenuSel blend=0
]])
