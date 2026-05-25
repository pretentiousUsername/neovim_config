local tabmem = {}

tabmem.pandoc = { "md", "markdown", "mdown", "mkd", "mkdn", "pandoc" }

function tabmem.is_member(element, set)
    for _, value in pairs(set) do
        if element == value then
            return true
        end
    end
    return false
end

function tabmem.not_pandoc(filetype)
    return tabmem.is_member(filetype, tabmem.pandoc)
end

return tabmem
