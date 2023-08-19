vim.g.mapleader = " " -- mapeia leader key para espaço

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>") -- sai do modo inserção usando jk rapidamente

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Limpa busca" }) -- limpa o highlight depois de fazer uma busca

keymap.set("n", "x", '"_x') -- no modo normal, vai apagar uma letra usando o x, sem copiar para o buffer

-- Esse comandos com espaço + ou - server para incrementar um valor númerico no buffer. Ex.: 2<leader>+ transforma em 3
keymap.set("n", "<leader>+", "<C-a>", { desc = "Aumentar valor" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Diminuir valor" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split Vertical" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split Horizontal" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Restaura tamanho dos splits" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>", { desc = "Fecha o Split" }) -- close current split window
keymap.set("n", "<leader>s=", ":vertical resize +20<CR>", { desc = "Aumentar Largura" }) -- close current split window
keymap.set("n", "<leader>s-", ":vertical resize -20<CR>", { desc = "Diminuir Largura" }) -- close current split window
keymap.set("n", "<leader>s+", ":horizontal resize +5<CR>", { desc = "Aumentar Altura" }) -- close current split window
keymap.set("n", "<leader>s_", ":horizontal resize -5<CR>", { desc = "Diminuir Altura" }) -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab
keymap.set("n", "<C-s>", ":w<CR>") -- Salva o arquivo
keymap.set("i", "<C-s>", "<esc>:w<CR>") -- Salva o arquivo

-- Buffer management
keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Fechar Buffer" }) -- Fecha o buffer
keymap.set("n", "<leader><tab>", ":bnext<CR>", { desc = "Próx. Tab." }) -- Troca para o próximo buffer
--keymap.set("n", "<C-w>", ":bd<CR>", { desc = "Fecha Buffer" }) -- fecha os buffers usando o atalho do vscode

-- Movimentação entre os buffers
keymap.set("n", "<M-Right>", "<C-w><C-l>")
keymap.set("n", "<M-Left>", "<C-w><C-h>")
keymap.set("n", "<M-Up>", "<C-w><C-k>")
keymap.set("n", "<M-Down>", "<C-w><C-j>")

-- plugins keymaps
-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>", { desc = "Max. Split" })

-- nvim-tree (file explorer)
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Arquivos" })

-- telescope (Pesquisa de arquivos)
-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Arquivos" }) -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Grep" }) -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Grep String" }) -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" }) -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Help Tags" }) -- list available help tags
keymap.set("n", "<leader>fg", "<cmd>Telescope lsp_document_symbols<cr>", { desc = "Símbolos" }) -- list available help tags

-- telescope git commands (not on youtube nvim video)
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", { desc = "Commits" }) -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>", { desc = "Commits do arquivo" }) -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", { desc = "Branchs" }) -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>", { desc = "Modificações" }) -- list current changes per file with diff preview ["gs" for git status]
keymap.set("n", "<leader>hk", "<cmd>Telescope keymaps<cr>", { desc = "Keymaps" })
