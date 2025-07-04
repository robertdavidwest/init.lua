local default_opts = { noremap = true }

vim.keymap.set({ "n" }, "<leader>jk", "<C-\\><C-N>", default_opts)
vim.keymap.set({ "n" }, "<C-j>", "<cmd>wincmd j<cr>", default_opts)
vim.keymap.set({ "n" }, "<C-k>", "<cmd>wincmd k<cr>", default_opts)
vim.keymap.set({ "n" }, "<C-h>", "<cmd>wincmd h<cr>", default_opts)
vim.keymap.set({ "n" }, "<C-l>", "<cmd>wincmd l<cr>", default_opts)


vim.keymap.set("n", "<leader>vv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")

vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_dP")
vim.keymap.set("v", "<leader>d", "\"_dP")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

--vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/robert/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)

vim.keymap.set("n", "<leader>%", function()
    vim.cmd.vsplit()
    vim.cmd.Ex()
end)

vim.keymap.set("n", "<leader>\"", vim.cmd.split)

vim.keymap.set("n", "<leader>m", function()
    vim.lsp.buf.format()
end)


vim.keymap.set("n", "<leader>ip", function()
    vim.cmd.terminal("/opt/homebrew/bin/ipython")
end)

vim.keymap.set("n", "<leader>p", function()
    vim.cmd.split()
    vim.cmd.terminal("/opt/homebrew/bin/python3.11 main.py")
end)

vim.keymap.set("n", "<leader>t", function()
    vim.cmd.split()
    vim.cmd.terminal()
end)


