┌─[srhills@minipcpn62] - [~] - [564]
└─[$] pyenv init                                                      [1:36:15]
# Load pyenv automatically by appending
# the following to
~/.zprofile (for login shells)
and ~/.zshrc (for interactive shells) :

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Restart your shell for the changes to take effect.

local null_ls = require("null-ls")

local opts = {
  sources = {
    null_ls.builtins.formatting.stylua,
    null_ls.builtins.diagnastics.black,
    null_ls.builtins.diagnostics.mypy,
    null_ls.builtins.diagnastics.ruff,
  }
}
return opts

local null_ls_status_ok, null_ls = pcall(require, "null-ls")
if not null_ls_status_ok then
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
	debug = false,
	sources = {
		formatting.stylua,
		formatting.cljstyle,
		diagnostics.clj_kondo,
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.formatting_sync()
				end,
			})
		end
	end,
})
