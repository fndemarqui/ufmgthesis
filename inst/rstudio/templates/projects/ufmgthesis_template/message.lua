function Meta(meta)
  if meta.thesis then
    -- Função para unir vários inlines em um texto só
    local function stringify(el)
      return pandoc.utils.stringify(el)
    end

    local course = meta.thesis.course and stringify(meta.thesis.course) or ""
    local degree  = meta.thesis.degree and stringify(meta.thesis.degree) or ""

    if not meta.thesis.message then
      meta.thesis.message =
        pandoc.Str("Texto apresentado ao Programa de Pós-Graduação em "
          .. course .. " como requisito parcial para obtenção do título de "
          .. degree .. " em " .. course .. ".")
    end
  end
  return meta
end
