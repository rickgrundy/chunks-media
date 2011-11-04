$ ->
  mediapack.initChunk $(chunk) for chunk in $(".chunk")

mediapack =
  initChunk: (chunk) ->
    mediapack.fileReplacement $(replaceLink) for replaceLink in chunk.find("a.replace_file")
  
  fileReplacement: (replaceLink) ->
    field = replaceLink.parents(".field")
    fileField = field.find("input[type=file]")
    fixedValue = field.find(".fixed")
    replaceLink.click ->
      replaceLink.hide()
      fixedValue.hide()
      fileField.show().click()
