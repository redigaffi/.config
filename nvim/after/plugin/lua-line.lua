require('lualine').setup {
	sections = {
		lualine_b = {
			{
				'branch',
				fmt = function (str)
					return string.sub(str, 1, 55) .. "..."
				end
			}
		}
	}
}
