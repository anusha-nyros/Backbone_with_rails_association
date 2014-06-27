class BackbonerailsApp.Views.FeaturesIndex extends Backbone.View

  template: JST['features/index']
 
  initialize: ->
    @collect = new BackbonerailsApp.Collections.Features();

  events:
    'click .show': 'showFeature '
    'click .edit': 'editFeature '
    'click .delete': 'destroyFeature '
    'click .new': 'newFeature '

  showFeature : (ids) ->
     app = new BackbonerailsApp.Routers.Features(model: @model);
     app.navigate('#features/'+ids.currentTarget.id, true)

  editFeature : (ids) ->
     app = new BackbonerailsApp.Routers.Features(model: @model);
     app.navigate('#features/'+ids.currentTarget.id+'/edit', true)

  destroyFeature : (ids) ->
     @collect.fetch().done =>
       @feature  = @collect.get(ids.currentTarget.id)
       @feature .destroy()
       Backbone.history.navigate("", {trigger: true})

  newFeature : (e) ->
     e.preventDefault()
     app = new BackbonerailsApp.Routers.Features();
     app.navigate('#features/new', true)

  render: ->
    $(@el).html(@template(features: @collection))
    this
