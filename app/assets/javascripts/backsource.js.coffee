window.Backsource =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  init: ->
    new Backsource.Routers.Links()
    Backbone.history.start(pushState: true)

$(document).ready ->
  Backsource.init()
