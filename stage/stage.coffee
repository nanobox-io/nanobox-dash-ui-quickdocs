window.init = () ->
  nanobox.Quickdocs.host = "http://localhost:7235"
  nanobox.Quickdocs.activateToggles()

  # show the toggle button
  castShadows(".shadow-parent")
