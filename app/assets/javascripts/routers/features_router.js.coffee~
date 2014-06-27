class BackbonerailsApp.Routers.Features extends Backbone.Router

  routes:
    'features/new': 'create'
    '/features': 'index'
    '.*': 'index'
    'features/:id': 'show'
    'features/:id/edit' : 'edit'

  initialize: ->
    @collection = new BackbonerailsApp.Collections.Features()

  index: ->
    @collection.fetch().done =>
      view = new BackbonerailsApp.Views.FeaturesIndex(collection: @collection)
      $('#feature_container').html(view.render().el)

  show: (id)->
    @collection.fetch().done =>
      @feature = @collection.get(id)
      view = new BackbonerailsApp.Views.FeaturesShow(model: @feature , collection: @collection)
      $(".indexfeature").html(view.render().el)

  edit: (id)->
    @collection.fetch().done =>
      @feature = @collection.get(id)
      view = new BackbonerailsApp.Views.FeaturesEdit(model: @feature , collection: @collection)
      $(".indexfeature").html(view.render().el)

  create: ->
    @collection.fetch().done =>
      @feature = new BackbonerailsApp.Models.Feature()
      view = new BackbonerailsApp.Views.FeaturesNew(model: @feature , collection: @collection)
      $(".indexfeature").html(view.render().el)

  destroy: (id)->
    @collection.fetch().done =>
      @feature = @collection.get(id)
      @feature .destroy()
