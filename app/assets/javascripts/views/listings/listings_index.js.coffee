class BackbonerailsApp.Views.ListingsIndex extends Backbone.View
  template: JST['listings/index']
  
  initialize: ->
    @collect = new BackbonerailsApp.Collections.Listings();
    @listing = new BackbonerailsApp.Models.Listing();

  events:
    'click .show': 'showListing'
    'click .edit': 'editListing'
    'click .delete': 'destroyListing'
    'click .new': 'newListing'

  showListing: (ids) ->
     console.log(ids)
     app = new BackbonerailsApp.Routers.Listings(model: @model);
     app.navigate('#listings/'+ids.currentTarget.id, true)

  editListing: (ids) ->
     app = new BackbonerailsApp.Routers.Listings(model: @model);
     app.navigate('#listings/'+ids.currentTarget.id+'/edit', true)

  destroyListing: (ids) ->
     @collect.fetch().done =>
       @listing = @collect.get(ids.currentTarget.id)
       @listing.destroy()
       Backbone.history.navigate("", {trigger: true})

  newListing: (e) ->
     e.preventDefault()
     app = new BackbonerailsApp.Routers.Listings(model: @listing, feature: @feature);
     app.navigate('#listings/new', true)

  render: ->
    $(@el).html(@template(listings: @collection))
    this
