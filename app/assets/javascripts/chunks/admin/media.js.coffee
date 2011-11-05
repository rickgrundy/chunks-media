$ -> media.initChunk $(chunk) for chunk in $(".chunk")

media =
  initChunk: (chunk) ->
    media.fileReplacement $(replaceLink) for replaceLink in chunk.find("a.replace_file")
    media.showPreview $(thumbnail) for thumbnail in chunk.find(".thumbnail img")
  
  fileReplacement: (replaceLink) ->
    field = replaceLink.parents(".field")
    fileField = field.find("input[type=file]")
    fixedValue = field.find(".fixed")
    replaceLink.click ->
      replaceLink.hide()
      fixedValue.hide()
      fileField.show().click()
      
  showPreview: (thumbnail) ->
    thumbnail.click ->
      thumbnail.parents(".chunk").find("a.show_preview").click()