window.init = () ->
  quickdoc = new nanobox.Quickdocs $("body"), {host:"http://localhost:7235"}
  quickdoc.build()
  quickdoc.activateToggles()

  #
  castShadows(".shadow-parent")
