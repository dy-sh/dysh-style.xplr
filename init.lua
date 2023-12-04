local function black(x)
	return "\x1b[30m" .. x .. "\x1b[0m"
end

local function red(x)
	return "\x1b[31m" .. x .. "\x1b[0m"
end

local function green(x)
	return "\x1b[32m" .. x .. "\x1b[0m"
end

local function yellow(x)
	return "\x1b[33m" .. x .. "\x1b[0m"
end

local function blue(x)
	return "\x1b[34m" .. x .. "\x1b[0m"
end

local function magenta(x)
	return "\x1b[35m" .. x .. "\x1b[0m"
end

local function cyan(x)
	return "\x1b[36m" .. x .. "\x1b[0m"
end

local function white(x)
	return "\x1b[37m" .. x .. "\x1b[0m"
end

function setup()
	local xplr = xplr

	----------------- ICONS -----------------
	--
	xplr.config.node_types.directory.meta.icon = blue(" ")
	xplr.config.node_types.directory.style = { fg = "Blue" }
	xplr.config.node_types.file.meta.icon = " "
	xplr.config.node_types.extension = {
		aac = { meta = { icon = cyan(" ") } },
		aif = { meta = { icon = cyan(" ") } },
		ape = { meta = { icon = cyan(" ") } },
		apk = { meta = { icon = " " } },
		au = { meta = { icon = cyan(" ") } },
		avi = { meta = { icon = magenta(" ") } },
		bat = { meta = { icon = " " } },
		bin = { meta = { icon = " " } },
		bmp = { meta = { icon = magenta(" ") } },
		bz2 = { meta = { icon = red(" ") } },
		c = { meta = { icon = yellow(" ") } },
		cmake = { meta = { icon = yellow(" ") } },
		conf = { meta = { icon = green(" ") } },
		cpp = { meta = { icon = yellow(" ") } },
		cs = { meta = { icon = yellow("󰌛 ") } },
		css = { meta = { icon = yellow(" ") } },
		csv = { meta = { icon = green(" ") } },
		dart = { meta = { icon = yellow(" ") } },
		db = { meta = { icon = " " } },
		deb = { meta = { icon = red(" ") } },
		desktop = { meta = { icon = green(" ") } },
		dll = { meta = { icon = " " } },
		doc = { meta = { icon = green(" ") } },
		docx = { meta = { icon = green(" ") } },
		ejs = { meta = { icon = yellow(" ") } },
		exe = { meta = { icon = " " } },
		flac = { meta = { icon = cyan(" ") } },
		flv = { meta = { icon = magenta(" ") } },
		gif = { meta = { icon = magenta(" ") } },
		go = { meta = { icon = yellow(" ") } },
		gz = { meta = { icon = red(" ") } },
		h = { meta = { icon = yellow(" ") } },
		html = { meta = { icon = yellow(" ") } },
		ini = { meta = { icon = green(" ") } },
		iso = { meta = { icon = red(" ") } },
		jar = { meta = { icon = " " } },
		java = { meta = { icon = yellow(" ") } },
		jpeg = { meta = { icon = magenta(" ") } },
		jpg = { meta = { icon = magenta(" ") } },
		js = { meta = { icon = yellow(" ") } },
		json = { meta = { icon = green(" ") } },
		jsx = { meta = { icon = yellow(" ") } },
		key = { meta = { icon = green(" ") } },
		less = { meta = { icon = yellow(" ") } },
		lhz = { meta = { icon = red(" ") } },
		log = { meta = { icon = green(" ") } },
		lua = { meta = { icon = yellow(" ") } },
		m4a = { meta = { icon = cyan(" ") } },
		md = { meta = { icon = green(" ") } },
		mkv = { meta = { icon = magenta(" ") } },
		mov = { meta = { icon = magenta(" ") } },
		mp3 = { meta = { icon = cyan(" ") } },
		mp4 = { meta = { icon = magenta(" ") } },
		mpeg = { meta = { icon = magenta(" ") } },
		mpg = { meta = { icon = magenta(" ") } },
		ninja = { meta = { icon = yellow("󰝴 ") } },
		ogg = { meta = { icon = cyan(" ") } },
		pdf = { meta = { icon = green(" ") } },
		pem = { meta = { icon = green(" ") } },
		png = { meta = { icon = magenta(" ") } },
		psd = { meta = { icon = magenta(" ") } },
		py = { meta = { icon = yellow(" ") } },
		qcow2 = { meta = { icon = red(" ") } },
		rar = { meta = { icon = red(" ") } },
		rb = { meta = { icon = yellow(" ") } },
		rpm = { meta = { icon = red(" ") } },
		rtf = { meta = { icon = green(" ") } },
		scss = { meta = { icon = yellow(" ") } },
		service = { meta = { icon = green(" ") } },
		sh = { meta = { icon = yellow(" ") } },
		so = { meta = { icon = " " } },
		sql = { meta = { icon = " " } },
		srt = { meta = { icon = green("󰨖 ") } },
		svg = { meta = { icon = magenta(" ") } },
		tar = { meta = { icon = red(" ") } },
		tiff = { meta = { icon = magenta(" ") } },
		ts = { meta = { icon = yellow(" ") } },
		tsx = { meta = { icon = yellow(" ") } },
		txt = { meta = { icon = green(" ") } },
		vue = { meta = { icon = yellow("󰡄 ") } },
		wav = { meta = { icon = cyan(" ") } },
		webm = { meta = { icon = magenta(" ") } },
		wma = { meta = { icon = cyan(" ") } },
		wmv = { meta = { icon = magenta(" ") } },
		xml = { meta = { icon = yellow("󰗀 ") } },
		xz = { meta = { icon = red(" ") } },
		yaml = { meta = { icon = yellow(" ") } },
		yml = { meta = { icon = yellow(" ") } },
		z = { meta = { icon = red(" ") } },
		zip = { meta = { icon = red(" ") } },
	}

	-------------- SELECTION COLOR ---------------------
	xplr.config.general.selection_ui.style = { bg = "Magenta", fg = "Black" }
	xplr.config.general.focus_selection_ui.style = { bg = "Magenta", fg = "LightYellow" }
	xplr.config.general.focus_ui.style = { fg = "LightYellow" }

	------------ TEMPORARY FIX FOR SELECTED FILES COLOR ----------------
	-- https://github.com/sayanarijit/xplr/issues/651
	-- https://github.com/sayanarijit/xplr/pull/656

	xplr.fn.builtin.fmt_general_table_row_cols_1 = function(m)
		local nl = xplr.util.paint("\\n", { add_modifiers = { "Italic", "Dim" } })
		local r = m.tree .. m.prefix

		-- start of edited part

		local style = m.style
		-- local style = xplr.util.lscolor(m.absolute_path)
		-- style = xplr.util.style_mix({ style, m.style })

		-- end of edited part

		if m.meta.icon == nil then
			r = r .. ""
		else
			r = r .. m.meta.icon .. " "
		end

		local rel = m.relative_path
		if m.is_dir then
			rel = rel .. "/"
		end
		r = r .. xplr.util.paint(xplr.util.shell_escape(rel), style)

		r = r .. m.suffix .. " "

		if m.is_symlink then
			r = r .. "-> "

			if m.is_broken then
				r = r .. "×"
			else
				local symlink_path = xplr.util.shorten(m.symlink.absolute_path, { base = m.parent })
				if m.symlink.is_dir then
					symlink_path = symlink_path .. "/"
				end
				r = r .. symlink_path:gsub("\n", nl)
			end
		end

		return r
	end
end

return { setup = setup }
