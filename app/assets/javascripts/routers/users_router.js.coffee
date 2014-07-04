class BackbonerailsApp.Routers.Users extends Backbone.Router

  routes: 
 
    '': 'new'

  initialize: ->
    @collection = new BackbonerailsApp.Collections.Users()
    @model = new BackbonerailsApp.Models.User()

  new: ->
    @collection.fetch().done =>
       view = new BackbonerailsApp.Views.UsersNew(model: @model, collection: @collection)
       $('#container').html(view.render().$el)
