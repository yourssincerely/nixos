return {
	{
		"RRethy/base16-nvim",
		priority = 1000,
		config = function()
			require('base16-colorscheme').setup({

				base00 = '#141218',
				base01 = '#141218',
				base02 = '#211f24',
				base03 = '#9d99a5',
				base0B = '#ffda72',
				base04 = '#f4efff',
				base05 = '#faf8ff',
				base06 = '#faf8ff',
				base07 = '#faf8ff',
				base08 = '#ff9fb2',
				base09 = '#ff9fb2',
				base0A = '#d7c6ff',
				base0C = '#e9e0ff',
				base0D = '#d7c6ff',
				base0E = '#ded0ff',
				base0F = '#ded0ff',
			})

			local current_file_path = vim.fn.stdpath("config") .. "/lua/plugins/dankcolors.lua"
			if not _G._matugen_theme_watcher then
				local uv = vim.uv or vim.loop
				_G._matugen_theme_watcher = uv.new_fs_event()
				_G._matugen_theme_watcher:start(current_file_path, {}, vim.schedule_wrap(function()
					local new_spec = dofile(current_file_path)
					if new_spec and new_spec[1] and new_spec[1].config then
						new_spec[1].config()
						print("Theme reload")
					end
				end))
			end
		end
	}
}
