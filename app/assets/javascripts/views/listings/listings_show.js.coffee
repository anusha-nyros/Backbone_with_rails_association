class BackbonerailsApp.Views.ListingsShow extends Backbone.View

  template: JST['listings/show']
  
  events:
    'click .back': 'backList'
  
  backList: (e) ->
    e.preventDefault()
    Backbone.history.navigate('/listings', {trigger: true})

  render: ->
    $(@el).html(@template(listing: @model))
    this
