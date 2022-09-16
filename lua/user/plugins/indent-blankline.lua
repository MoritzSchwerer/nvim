vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent guifg=#383838 gui=nocombine]]

ok, module = pcall(require, "indent_blankline")
if not ok then return end
module.setup {
    char_highlight_list = {
        "IndentBlanklineIndent",
    },
}
