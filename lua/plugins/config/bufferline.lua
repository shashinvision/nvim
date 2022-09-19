    require('bufferline').setup {
        options= {
            mode = "buffers",
            numbers = "ordinal",
            close_command = "bdelete! %d",       -- can be a string | function, see "Mouse actions"
            right_mouse_command = "bdelete! %d", -- can be a string | function, see "Mouse actions"
            left_mouse_command = "buffer %d",    -- can be a string | function, see "Mouse actions"
            middle_mouse_command = nil,          -- can be a string | function, see "Mouse actions"
            separator_style = "thin",
            diagnostics = "coc"
        },

        highlights = {
        }
    }
