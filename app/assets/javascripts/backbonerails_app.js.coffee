window.BackbonerailsApp =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: -> 
      new BackbonerailsApp.Routers.Listings()
      Backbone.history.start(pushState: true)

$(document).ready ->
  BackbonerailsApp.initialize()
