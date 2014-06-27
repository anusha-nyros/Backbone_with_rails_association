class BackbonerailsApp.Routers.Listings extends Backbone.Router
 
 routes:
    'new': 'create'
    'listings': 'index'
    '': 'index'
    ':id': 'show'
    ':id/edit' : 'edit'

 initialize: ->
    @collection = new BackbonerailsApp.Collections.Listings()
    @collection.fetch()
 
 index: ->
    @collection.fetch().done =>
      view = new BackbonerailsApp.Views.ListingsIndex(model: @model, collection: @collection)
      $('#container').html(view.render().el)

 show: (id)->
    @collection.fetch().done =>
      @listing = @collection.get(id)
      view = new BackbonerailsApp.Views.ListingsShow(model: @listing, collection: @collection)
      $("#container").html(view.render().el)

 edit: (id)->
    @collection.fetch().done =>
      @listing = @collection.get(id)
      view = new BackbonerailsApp.Views.ListingsEdit(model: @listing, collection: @collection)
      $("#container").html(view.render().el)

 create: (e)->
    @listing = new BackbonerailsApp.Models.Listing()
    view = new BackbonerailsApp.Views.ListingsNew(model: @listing, collection: @collection)
    $("#container").html(view.render().el)

 destroy: (id)->
    @collection.fetch().done =>
      @listing = @collection.get(id)
      @listing.destroy()
