return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, {
        "typescript",
        "ptuscript"
      })
      vim.filetype.add({ extension = { ptu = "ptuscript" } })
      vim.treesitter.language.add('ptuscript', { path = "/home/pierre/projects/tree-sitter-ptuscript/ptuscript.so" })
      vim.treesitter.language.register('ptuscript', { 'ptu' })
    end,
  }
}
