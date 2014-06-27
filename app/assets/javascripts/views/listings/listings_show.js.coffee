class BackbonerailsApp.Views.ListingsShow extends Backbone.View

  template: JST['listings/show']
  
<<<<<<< HEAD
=======
  events:
    'click .back': 'backList'
  
  backList: (e) ->
    e.preventDefault()
    Backbone.history.navigate('/listings', {trigger: true})

>>>>>>> 341ccd3929efec9760688a2c53f7195fa17290ee
  render: ->
    $(@el).html(@template(listing: @model))
    this
