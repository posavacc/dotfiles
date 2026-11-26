local capabilities = require("cmp_nvim_lsp").default_capabilities()

vim.lsp.config("lua_ls", {
    capabilities = capabilities,
    settings = {
        Lua = {
            diagnostics = {
                globals = {
                    "vim",
                },
            },
        },
    },
})

vim.lsp.config("gdscript", {
    cmd = vim.lsp.rpc.connect("127.0.0.1", 6005),
    filetypes = { "gdscript" },
    root_markers = { "project.godot", ".git" },
})

vim.diagnostic.config({
  virtual_text = {
      severity = { min = vim.diagnostic.severity.ERROR }
  },
  signs = {
      severity = { min = vim.diagnostic.severity.ERROR }
  },
  underline = true,
})

vim.lsp.config("rust_analyzer", {
    capabilities = capabilities,
})

vim.lsp.config("ols", {
    capabilities = capabilities,
})

vim.lsp.config("clangd", {
    capabilities = capabilities,
})

vim.lsp.enable("lua_ls")
vim.lsp.enable("rust_analyzer")
vim.lsp.enable("ols")
vim.lsp.enable("clangd")
vim.lsp.enable("gdscript")

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(event)
        local opts = { buffer = event.buf }

        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    end,
})
