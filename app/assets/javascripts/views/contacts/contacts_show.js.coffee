class BackbonerailsApp.Views.ContactsShow extends Backbone.View

  template: JST['contacts/show']
  
  events:
    'click .back': 'backList'
  
  backList: (e) ->
    e.preventDefault()
    Backbone.history.navigate('/#contacts', {trigger: true})

  render: ->
    $(@el).html(@template(contact: @model))
    this
