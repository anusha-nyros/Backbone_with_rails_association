class BackbonerailsApp.Views.ContactsShow extends Backbone.View

  template: JST['contacts/show']
  
  events:
    'click .back': 'backList'
  
  backList: (e) ->
    e.preventDefault()
    Backbone.history.navigate('/#contacts', {trigger: true})

  render: ->
    console.log("SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS")
    console.log(jQuery.type( @collection ) )
    if jQuery.type(@collection) == "array"
      @collection = new BackbonerailsApp.Collections.Contacts(@collection)
    $(@el).html(@template(contacts: @collection))
    this
