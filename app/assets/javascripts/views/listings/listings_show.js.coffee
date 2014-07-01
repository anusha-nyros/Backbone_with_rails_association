class BackbonerailsApp.Views.ListingsShow extends Backbone.View

  template: JST['listings/show']
  
<<<<<<< HEAD
  render: ->
    console.log(@model)
=======
<<<<<<< HEAD
=======
  events:
    'click .back': 'backList'
  
  backList: (e) ->
    e.preventDefault()
    Backbone.history.navigate('/listings', {trigger: true})

>>>>>>> 341ccd3929efec9760688a2c53f7195fa17290ee
  render: ->
>>>>>>> 7f520bbbda88cadbd7aa978e73b98b678bde9b49
    $(@el).html(@template(listing: @model))
    this
