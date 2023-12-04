local function black(x)
  return '\x1b[30m' .. x .. '\x1b[0m'
end

local function red(x)
  return '\x1b[31m' .. x .. '\x1b[0m'
end

local function green(x)
  return '\x1b[32m' .. x .. '\x1b[0m'
end

local function yellow(x)
  return '\x1b[33m' .. x .. '\x1b[0m'
end

local function blue(x)
  return '\x1b[34m' .. x .. '\x1b[0m'
end

local function magenta(x)
  return '\x1b[35m' .. x .. '\x1b[0m'
end

local function cyan(x)
  return '\x1b[36m' .. x .. '\x1b[0m'
end

local function white(x)
  return '\x1b[37m' .. x .. '\x1b[0m'
end

function setup()
  local xplr = xplr

  xplr.config.node_types.directory.meta.icon = ' '
  xplr.config.node_types.directory.style = { fg = { Rgb = { 164, 189, 239 } } }
  xplr.config.node_types.file.meta.icon = ' '
  xplr.config.node_types.extension = {
    aac = { meta = { icon = ' ' } },
    aif = { meta = { icon = ' ' } },
    ape = { meta = { icon = ' ' } },
    apk = { meta = { icon = ' ' } },
    au = { meta = { icon = ' ' } },
    avi = { meta = { icon = ' ' } },
    bat = { meta = { icon = ' ' } },
    bin = { meta = { icon = ' ' } },
    bmp = { meta = { icon = ' ' } },
    bz2 = { meta = { icon = ' ' } },
    c = { meta = { icon = ' ' } },
    cmake = { meta = { icon = ' ' } },
    conf = { meta = { icon = ' ' } },
    cpp = { meta = { icon = ' ' } },
    cs = { meta = { icon = '󰌛 ' } },
    css = { meta = { icon = ' ' } },
    csv = { meta = { icon = ' ' } },
    dart = { meta = { icon = ' ' } },
    db = { meta = { icon = ' ' } },
    deb = { meta = { icon = ' ' } },
    desktop = { meta = { icon = 'desktop' } },
    dll = { meta = { icon = ' ' } },
    doc = { meta = { icon = ' ' } },
    docx = { meta = { icon = ' ' } },
    ejs = { meta = { icon = ' ' } },
    exe = { meta = { icon = ' ' } },
    flac = { meta = { icon = ' ' } },
    flv = { meta = { icon = ' ' } },
    gif = { meta = { icon = ' ' } },
    go = { meta = { icon = ' ' } },
    gz = { meta = { icon = ' ' } },
    h = { meta = { icon = ' ' } },
    html = { meta = { icon = ' ' } },
    ini = { meta = { icon = ' ' } },
    iso = { meta = { icon = ' ' } },
    jar = { meta = { icon = ' ' } },
    java = { meta = { icon = ' ' } },
    jpeg = { meta = { icon = ' ' } },
    jpg = { meta = { icon = ' ' } },
    js = { meta = { icon = ' ' } },
    json = { meta = { icon = ' ' } },
    jsx = { meta = { icon = ' ' } },
    key = { meta = { icon = ' ' } },
    lhz = { meta = { icon = ' ' } },
    log = { meta = { icon = ' ' } },
    lua = { meta = { icon = ' ' } },
    m4a = { meta = { icon = ' ' } },
    md = { meta = { icon = ' ' } },
    mkv = { meta = { icon = ' ' } },
    mov = { meta = { icon = ' ' } },
    mp3 = { meta = { icon = ' ' } },
    mp4 = { meta = { icon = ' ' } },
    mpeg = { meta = { icon = ' ' } },
    mpg = { meta = { icon = ' ' } },
    ninja = { meta = { icon = '󰝴 ' } },
    ogg = { meta = { icon = ' ' } },
    pdf = { meta = { icon = ' ' } },
    pem = { meta = { icon = ' ' } },
    png = { meta = { icon = ' ' } },
    psd = { meta = { icon = ' ' } },
    py = { meta = { icon = ' ' } },
    qcow2 = { meta = { icon = ' ' } },
    rar = { meta = { icon = ' ' } },
    rb = { meta = { icon = ' ' } },
    rpm = { meta = { icon = ' ' } },
    rtf = { meta = { icon = ' ' } },
    scss = { meta = { icon = ' ' } },
    service = { meta = { icon = ' ' } },
    sh = { meta = { icon = ' ' } },
    so = { meta = { icon = ' ' } },
    sql = { meta = { icon = ' ' } },
    srt = { meta = { icon = '󰨖 ' } },
    svg = { meta = { icon = ' ' } },
    tar = { meta = { icon = ' ' } },
    tiff = { meta = { icon = ' ' } },
    ts = { meta = { icon = ' ' } },
    tsx = { meta = { icon = ' ' } },
    txt = { meta = { icon = ' ' } },
    vue = { meta = { icon = '󰡄 ' } },
    wav = { meta = { icon = ' ' } },
    webm = { meta = { icon = ' ' } },
    wma = { meta = { icon = ' ' } },
    wmv = { meta = { icon = ' ' } },
    xml = { meta = { icon = '󰗀 ' } },
    xz = { meta = { icon = ' ' } },
    yaml = { meta = { icon = ' ' } },
    yml = { meta = { icon = ' ' } },
    z = { meta = { icon = ' ' } },
    zip = { meta = { icon = ' ' } },
  }
end

return { setup = setup }
