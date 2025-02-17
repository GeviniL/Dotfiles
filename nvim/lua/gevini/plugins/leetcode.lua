-- return {
--   {
--     "kawre/leetcode.nvim",
--     dependencies = {
--       "nvim-telescope/telescope.nvim",
--       "nvim-lua/plenary.nvim",
--       "MunifTanjim/nui.nvim",
--     },
--     opts = {
--       -- LeetCode configuration options
--       lang = "python3",
--       directory = vim.fn.expand("~/Dev/leetcode/"),
--     },
--     keys = {
--       { "<leader>lq", "<cmd>LeetCodeList<cr>", desc = "List LeetCode problems" },
--       { "<leader>lt", "<cmd>LeetCodeTest<cr>", desc = "Test LeetCode solution" },
--       { "<leader>ls", "<cmd>LeetCodeSubmit<cr>", desc = "Submit LeetCode solution" },
--     },
--   },
-- }
--
--
return {
    "kawre/leetcode.nvim",
    build = ":TSUpdate html",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim", -- required by telescope
        "MunifTanjim/nui.nvim",

        -- optional
        "nvim-treesitter/nvim-treesitter",
        "rcarriga/nvim-notify",
        "nvim-tree/nvim-web-devicons",
    },
    opts = {
        -- configuration goes here
      lang = "python3"
    },
}
