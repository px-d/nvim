return {
    "neovim/nvim-lspconfig",
    dependencies = {
        { "williamboman/mason.nvim" },
        { "williamboman/mason-lspconfig.nvim" },
        { "stevearc/conform.nvim" },
        { "WhoIsSethDaniel/mason-tool-installer.nvim" },
        { "saghen/blink.cmp" }
    },
    config = function()
        local mason = require("mason")
        local mason_lspconfig = require("mason-lspconfig")
        local lspconfig = require("lspconfig")
        local conform = require("conform")
        local tools = require("mason-tool-installer")
        local capabilities = require('blink.cmp').get_lsp_capabilities()

        mason.setup()

        mason_lspconfig.setup({
            ensure_installed = {
                "lua_ls",
                "ts_ls",
                "emmet_ls",
                "svelte",
                "tailwindcss",
            },
            automatic_installation = true,
            handlers = {
                function(server_name)
                    lspconfig[server_name].setup({ capabilities = capabilities })
                end,
            },
        })
        tools.setup({
            ensure_installed = {
                "stylua",
                "prettier",
                "prettierd",
            },
        })

        conform.setup({
            formatters_by_ft = {
                lua = { "stylua" },
                javascript = { "prettierd", "prettier", stop_after_first = true },
                typescript = { "prettierd", "prettier", stop_after_first = true },
                typescriptreact = { "prettierd", "prettier", stop_after_first = true },
                svelte = { "prettierd", "prettier" },
            },
        })
    end,
}
