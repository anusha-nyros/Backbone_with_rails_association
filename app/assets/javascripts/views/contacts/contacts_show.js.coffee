class BackbonerailsApp.Views.ContactsShow extends Backbone.View

  template: JST['contacts/show']
  
  events:
    'click .back': 'backList'
  
  backList: (e) ->
    e.preventDefault()
    Backbone.history.navigate('/#contacts', {trigger: true})

  render: ->
<<<<<<< HEAD
    $(@el).html(@template(contacts: @collection))
=======
    $(@el).html(@template(contact: @model))
>>>>>>> 7f520bbbda88cadbd7aa978e73b98b678bde9b49
    this
