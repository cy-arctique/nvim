-- ===================基础设置===================
local opt = vim.opt
-- 行号
opt.relativenumber = true
opt.number = true
-- 缩进
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true
-- 防止包裹
opt.wrap = false
-- 光标行
opt.cursorline = true
-- 启用鼠标
opt.mouse:append("a")
-- 系统剪贴板
opt.clipboard:append("unnamedplus")
-- 默认新窗口(右和下)
opt.splitright = true
opt.splitbelow = true
-- 搜索
opt.ignorecase = true
opt.smartcase = true
-- 外观
opt.termguicolors = true
-- 左侧多一列, debug有用
opt.signcolumn = "yes"

-- ===================按键设置===================
-- 主键设置为空格键
vim.g.mapleader = " "
local keymap = vim.keymap
-- ESC
keymap.set("i", "<A-a>", "<ESC>")
-- 换行
keymap.set("i", "<C-p>", "<ESC>o")
-- 剪切
keymap.set("i", "<C-x>", "<ESC>dd")
keymap.set("n", "<C-x>", "<ESC>dd")
-- 保存
keymap.set("i", "<C-s>", "<ESC>:w<CR>")
keymap.set("n", "<C-s>", "<ESC>:w<CR>")
-- 撤回和反撤回
keymap.set("i", "<C-z>", "<ESC>u")
keymap.set("i", "<C-y>", "<ESC><C-r>")
keymap.set("n", "<C-z>", "<ESC>u")
keymap.set("n", "<C-y>", "<ESC><C-r>")
-- 选中代码上下移动
keymap.set("v", "j", ":m'>+1<CR>gv=gv")
keymap.set("v", "k", ":m'<-2<CR>gv=gv")
-- 水平新增窗口
keymap.set("n", "<leader><C-v>", "<C-w>v")
-- 垂直新增窗口
keymap.set("n", "<leader><C-h>", "<C-w>s")
-- 窗口之间的移动
keymap.set("n", "<C-up>", "<C-w>k")
keymap.set("n", "<C-down>", "<C-w>j")
keymap.set("n", "<C-left>", "<C-w>h")
keymap.set("n", "<C-right>", "<C-w>l")
-- 关闭当前
keymap.set("n", "<leader><C-w>", "<C-w>c")
-- 关闭其它
keymap.set("n", "<leader><C-o>", "<C-w>o")
-- 控制比例
keymap.set("n", "<S-C-left>", ":vertical resize +10<CR>")
keymap.set("n", "<S-C-right>", ":vertical resize -10<CR>")
keymap.set("n", "<S-C-up>", ":resize -10<CR>")
keymap.set("n", "<S-C-down>", ":resize +10<CR>")
-- 取消搜索高亮
keymap.set("n", "<leader>nh", ":nohl<CR>")
