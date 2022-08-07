require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    side = "left",
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
  git = {
      enable = false,
  },
  log = {
      enable = false,
      truncate = true,
      types = {
        git = true,
          profile = true,
        },
  },
})
