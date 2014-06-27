class BackbonerailsApp.Views.ContactsEdit extends Backbone.View
  template: JST['contacts/edit']

  initialize: ->
    @collection.on('reset', @render, this)

  events:
    "click .button": "updateContact"

  updateContact: (e) ->
    e.preventDefault()
    @model.set name: @$('#contact_name').val()
    @model.set email: @$('#contact_email').val()
    @model.set phone: @$('#contact_phone').val()
    @model.save({"name": @$el.find("#contact_name").val(),"email": @$el.find("#contact_headline").val(),"phone": @$el.find("#contact_description").val()})
    console.log("succeess")
    console.log(@collection.length)
    Backbone.history.navigate('/#listings', {trigger: true})

  render: ->
    $(@el).html(@template(contact: @model))
    this
