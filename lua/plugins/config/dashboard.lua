  local db = require('dashboard')
  db.preview_file_height = 11
  db.preview_file_width = 70
db.default_banner = {
  '',
  '',
 ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
 ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
 ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
 ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
 ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
 ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
  '',
  ' [ -- ShashinV Dashboard --] ',
  '',
}
  db.custom_center = {
      {icon = '  ',
      desc ='File Browser                      ',
      action =  'Telescope file_browser',
      shortcut = 'Leader fb'},
      {icon = '  ',
      desc ='NvimTree                              ',
      action =  'NvimTreeToggle',
      shortcut = 'Ctrl t'},
      {icon = '  ',
      desc = 'Find  word                              ',
      action = 'Telescope live_grep',
      shortcut = 'f g'},
      {icon = '  ',
      desc = 'Find  File                              ',
      action = 'Telescope find_files find_command=rg,--hidden,--files',
      shortcut = 'f f'},
      {icon = '  ',
      desc = 'Recently opened files                   ',
      action =  'FZFMru',
      shortcut = 'f h'},
    }
