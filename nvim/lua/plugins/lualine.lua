local function codestats_xp()
    return vim.call('CodeStatsXp')
end

require('lualine').setup {
  sections = {
    lualine_x = {codestats_xp}
  }
}

-- let g:airline_section_x = airline#section#create_right(['tagbar', 'filetype', '%{CodeStatsXp()}'])
