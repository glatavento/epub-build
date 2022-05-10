-- 全局常量
RAW_HREF = {
  ['S%-abstract'] = 'ch002.xhtml#S-abstract',
  ['Rper%-reason'] = 'ch011.xhtml#Rper-reason',
  ['Rper%-Knuth'] = 'ch011.xhtml#Rper-Knuth',
}

-- 全局变量
PASS = false

function RawInline(el)
  if el.text == '</a>' then
    if PASS then
      PASS = false
      return el
    else
      return {}
    end
  elseif '<a name="' == el.text:sub(1, 9) then
    local id = el.text:sub(10, -3)
    local ret = pandoc.Span('')
    ret.attr = { id = id }
    return ret
  else
    print(el.text)
    for before, after in pairs(RAW_HREF) do
      if string.find(el.text, before) then
        local ret = pandoc.RawInline('html', '<a href="' .. after .. '">')
        PASS = true
        return ret
      end
    end
    return el
  end
end
