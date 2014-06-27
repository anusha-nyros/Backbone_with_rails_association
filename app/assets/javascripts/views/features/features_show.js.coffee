class BackbonerailsApp.Views.FeaturesShow extends Backbone.View

  template: JST['features/show']
  
  events:
    'click .back': 'backList'
  
  backList: (e) ->
    e.preventDefault()
    Backbone.history.navigate('/#features', {trigger: true})

  render: ->
    $(@el).html(@template(feature: @model))
    this
