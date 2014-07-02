class BackbonerailsApp.Routers.Listings extends Backbone.Router

 routes:
    'new': 'create'
    'listings': 'index'
    '': 'index'
    ':id': 'show'
    ':id/edit' : 'edit'

 initialize: ->
    @issues = new BackbonerailsApp.Collections.Listings()
    #@issues = new BackbonerailsApp.PageableCollectionListings()
 
 index: ->
    @issues.fetch({reset: true}).done =>
      view = new BackbonerailsApp.Views.ListingsIndex(model: @model, collection: @issues)
      $("#container1").append(view.render().$el);

      

 show: (id)->
    @issues.fetch().done =>
      @listing = @issues.get(id)
      view = new BackbonerailsApp.Views.ListingsShow(model: @listing, collection: @issues)
      $("#container").html(view.render().el)

 edit: (id)->
    @issues.fetch().done =>
      @listing = @collection.get(id)
      view = new BackbonerailsApp.Views.ListingsEdit(model: @listing, collection: @issues)
      $(".modal-body").html(view.render().el)
      $('#modal-window').modal('show')

 create: (e)->
   @issues.fetch().done =>
     @listing = new BackbonerailsApp.Models.Listing()
     view = new BackbonerailsApp.Views.ListingsNew(model: @listing, collection: @issues)
     $(".modal-body").html(view.render().el)
     $('#modal-window').modal('show')


 destroy: (id)->
    @collection = new BackbonerailsApp.Collections.Listings()
    @collection.fetch().done =>
      @listing = @collection.get(id)
      @listing.destroy()
