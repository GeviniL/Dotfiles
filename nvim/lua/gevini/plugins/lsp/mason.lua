return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        -- import mason
        local mason = require("mason")

        -- import mason-lspconfig
        local mason_lspconfig = require("mason-lspconfig")

        -- import mason-tool-installer
        local mason_tool_installer = require("mason-tool-installer")

        -- enable mason and configure icons
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        -- enable mason-lspconfig
        mason_lspconfig.setup({
            -- list of servers for mason to install
            ensure_installed = {
                "html",
                "cssls",
                "lua_ls",
                "pyright",
                "clangd",
                "ts_ls",
                "jdtls",
                "rust_analyzer",
            },
            -- auto-install configured servers (with lspconfig)
            automatic_installation = true, -- not the same as ensure_installed
        })

        mason_tool_installer.setup({
            ensure_installed = {
                -- Formatters
                "prettier", -- prettier formatter
                "stylua", -- lua formatter
                "black", -- python formatter
                "clang-format", -- c/c++ formatter
                -- Linters
                "eslint_d", -- js/ts linter
                "cpplint", -- c/c++ linter
                "stylelint", -- css linter
                "ast-grep", -- semantic search and replace
            },
            auto_update = true,
            run_on_start = true,
            start_delay = 3000, -- 3 second delay
        })
    end,
}
