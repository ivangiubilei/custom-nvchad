local base = require("plugins.configs.lspconfig")
local on_attach = base.on_attach
local capabilities = base.capabilities

local lspconfig = require("lspconfig")

lspconfig.clangd.setup ({
  on_attach = function(client, bufnr)
    client.server_capabilities.signatureHelpProvider = false
    on_attach(client, bufnr)
  end,
  capabilities = capabilities,
})

lspconfig.pyright.setup ({
  on_attach = on_attach,
  capabilities = capabilities,
  filetype = {"python"},
})

lspconfig.elixirls.setup ({
  cmd = {"/home/kawa/ls/elixirls/language_server.sh"},
  filetype = { "elixir", "eelixir", "heex", "surface" }
})

lspconfig.java_language_server.setup ({
  cmd = {"/home/kawa/ls/java-language-server/dist/lang_server_linux.sh"}
})

-- automatically add setup the servers
local servers = {"zls", "pyright"}
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end
