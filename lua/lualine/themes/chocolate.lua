local bg = vim.opt.background:get()
local palette = require('melange/palettes/' .. bg)
local grays = palette.a
local bright = palette.b
local normal = palette.c
local dark = palette.d

local colors = require('chocolate.palette').base_30
local theme = require('chocolate.palette').base_16

return {
  normal = {
    a = { bg = colors.nord_blue, fg = colors.black, gui = 'bold' },
    b = { bg = colors.statusline_bg, fg = colors.blue, gui = 'bold' },
    c = { bg = colors.one_bg, fg = colors.white, gui = 'bold' },
    y = { bg = colors.lightbg, fg = colors.green },
  },
  insert = {
    a = { bg = colors.dark_purple, fg = colors.black, gui = 'bold' },
    b = { bg = colors.statusline_bg, fg = colors.blue, gui = 'bold' },
    c = { bg = colors.one_bg, fg = colors.white, gui = 'bold' },
    y = { bg = colors.lightbg, fg = colors.green },
  },
  command = {
    a = { bg = colors.green, fg = colors.black, gui = 'bold' },
    b = { bg = colors.statusline_bg, fg = colors.blue, gui = 'bold' },
    c = { bg = colors.one_bg, fg = colors.white, gui = 'bold' },
    y = { bg = colors.lightbg, fg = colors.green },
  },
  visual = {
    a = { bg = colors.cyan, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightbg, fg = colors.blue, gui = 'bold' },
    c = { bg = colors.statusline_bg, fg = colors.white, gui = 'bold' },
    y = { bg = colors.lightbg, fg = colors.green },
  },
  replace = {
    a = { bg = colors.sun, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightbg, fg = colors.blue, gui = 'bold' },
    c = { bg = colors.statusline_bg, fg = colors.white, gui = 'bold' },
    y = { bg = colors.lightbg, fg = colors.green },
  },
  terminal = {
    a = { bg = colors.green, fg = colors.black, gui = 'bold' },
    b = { bg = colors.lightbg, fg = colors.blue, gui = 'bold' },
    c = { bg = colors.statusline_bg, fg = colors.white, gui = 'bold' },
    y = { bg = colors.lightbg, fg = colors.green },
  },
  inactive = {
    a = { bg = colors.one_bg, fg = colors.beige },
    b = { bg = colors.one_bg, fg = colors.beige },
    c = { bg = colors.one_bg, fg = colors.beige },
  },
}
