window.Backsource =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Backsource.Routers.Links()
    Backbone.history.start()

$(document).ready ->
  Backsource.init()
