vim.g.mapleader = " "
local keymap = vim.keymap


keymap.set("i", "jk","<ESC>",{ desc = "Exit insert mode with jk"})

keymap.set("n", "<leader>nh", ":nohl<CR>", {desc = "Clear search highlights"})


-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- saving and quitting
keymap.set("n", "<leader>wq", ":wq<CR>", { desc = "Save and quit" })
keymap.set("n", "<leader>w", ":w<CR>", {desc = "Save"})
keymap.set("n", "<leader>q", ":q<CR>", {desc = "Quit"})

-- Leetcode
keymap.set("n", "<leader>ez", "<cmd>Leet list difficulty=easy<CR>", {desc = "List leetcode easy problems"})
keymap.set("n", "<leader>md", "<cmd>Leet list difficulty=medium<CR>", {desc = "List leetcode medium problems"})
keymap.set("n", "<leader>hd", "<cmd>Leet list difficulty=hard<CR>", {desc = "List leetcode hard problems"})
keymap.set("n", "<leader>lt", "<cmd>Leet test<CR>", {desc = "Test Code"})
keymap.set("n", "<leader>sb", "<cmd>Leet submit<CR>", {desc = "Submit Code"})

-- Vimtex
keymap.set("n", "<leader>lc","<cmd>VimtexCompile<CR>", {desc = "Compile current vimtex file"})
keymap.set("n", "<leader>lv","<cmd>VimtexView<CR>", {desc = "View Compiled file"})
keymap.set("n", "<leader>lx","<cmd>VimtexClean<CR>", {desc = "Clean compiled file"})

--Silicon
keymap.set("v", "<leader>ss","<cmd>Silicon<CR>", {desc = "Create code screenshot"})



