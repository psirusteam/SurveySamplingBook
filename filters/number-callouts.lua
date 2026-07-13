local counters = {
  ["Definicion"] = 0,
  ["Resultado"] = 0,
  ["Ejemplo"] = 0
}

local function current_chapter()
  local input = PANDOC_STATE.input_files and PANDOC_STATE.input_files[1] or ""
  return input:match("[Cc]ap(%d+)%.qmd$")
end

local chapter = current_chapter()

local function callout_kind(title)
  if title == nil then
    return nil
  end

  if title:match("^Definici") then
    return "Definicion", "Definición"
  end

  if title == "Resultado" then
    return "Resultado", "Resultado"
  end

  if title == "Ejemplo" then
    return "Ejemplo", "Ejemplo"
  end

  return nil
end

local function already_numbered(title)
  return title:match("^Definici[oó]n%s+%d") or
    title:match("^Resultado%s+%d") or
    title:match("^Ejemplo%s+%d")
end

function Div(el)
  local title = el.attributes["title"]
  if title == nil or already_numbered(title) then
    return nil
  end

  local key, label = callout_kind(title)
  if key == nil then
    return nil
  end

  counters[key] = counters[key] + 1
  local number = tostring(counters[key])
  if chapter ~= nil then
    number = chapter .. "." .. number
  end

  el.attributes["title"] = label .. " " .. number
  return el
end
