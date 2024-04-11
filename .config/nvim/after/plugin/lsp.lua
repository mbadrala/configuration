local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    -- client.server_capabilities.semanticTokensProvider = nil
    lsp_zero.default_keymaps({buffer = bufnr})
end)

local on_attach

require('mason').setup({})
local lspconfig = require('lspconfig')
require('mason-lspconfig').setup({
    ensure_installed = { "lua_ls", "gopls", "clangd", "tsserver", "pyright", "omnisharp" },
    handlers = {
        lsp_zero.default_setup,
        omnisharp = function ()
            lspconfig.omnisharp.setup({
                handlers = {
                    ["textDocument/definition"] = require('omnisharp_extended').handler,
                },
                cmd = { "omnisharp", '--languageserver', '--hostPID', tostring(vim.fn.getpid()) },
                enable_editorconfig_support = true, -- setting from .editorconfig
                enable_ms_build_load_projects_on_demand = false,
                enable_roslyn_analyzers = true,
                analyze_open_documents_only = true,
                organize_imports_on_format = true,
                enable_import_completion = false,
                sdk_include_prereleases = true,
            })
        end,
        gopls = function ()
            lspconfig.gopls.setup({
                settings = {
                    gopls = {
                        analyses = {
                            unusedparams = true,
                        },
                        staticcheck = true,
                        gofumpt = true,
                    },
                },
            })
        end
    },
})

local cmp = require('cmp')
local cmp_action = lsp_zero.cmp_action()

cmp.setup({
    mapping = cmp.mapping.preset.insert({
        -- `Enter` key to confirm completion
        ['<CR>'] = cmp.mapping.confirm({select = false}),

        -- Ctrl+Space to trigger completion menu
        ['<C-Space>'] = cmp.mapping.complete(),

        -- Navigate between snippet placeholder
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),

        -- Scroll up and down in the completion documentation
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
    })
})

 -- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
 --     vim.lsp.diagnostic.on_publish_diagnostics, {
 --         virtual_text = false
 -- 
 --     }
 -- 
 -- )

vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.go",
  callback = function()
    local params = vim.lsp.util.make_range_params()
    params.context = {only = {"source.organizeImports"}}
    -- buf_request_sync defaults to a 1000ms timeout. Depending on your
    -- machine and codebase, you may want longer. Add an additional
    -- argument after params if you find that you have to write the file
    -- twice for changes to be saved.
    -- E.g., vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, 3000)
    local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params)
    for cid, res in pairs(result or {}) do
      for _, r in pairs(res.result or {}) do
        if r.edit then
          local enc = (vim.lsp.get_client_by_id(cid) or {}).offset_encoding or "utf-16"
          vim.lsp.util.apply_workspace_edit(r.edit, enc)
        end
      end
    end
    vim.lsp.buf.format({async = false})
  end
})
