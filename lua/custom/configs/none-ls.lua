local null_ls = require "null-ls"

null_ls.setup {
  sources = {
    -- lua 
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.completion.spell,
    -- js
    null_ls.builtins.diagnostics.eslint,
    --python
    null_ls.builtins.formatting.black,
    null_ls.builtins.diagnostics.mypy,
    null_ls.builtins.diagnostics.ruff,
    -- clang
    null_ls.builtins.formatting.clang_format,
    -- markdown
    null_ls.builtins.diagnostics.alex,
    -- yaml json 
    null_ls.builtins.diagnostics.cfn_lint,
    -- elixir
    null_ls.builtins.formatting.mix
  },
}
