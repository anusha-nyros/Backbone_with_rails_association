class BackbonerailsApp.Views.ContactsNew extends Backbone.View
  template: JST['contacts/new']
  
  initialize: ->
    @listing = @model
    
  events:
    "click .button": "saveContact"

  saveContact: (e) ->
    e.preventDefault()
    @model.set name: @$('#contact_name').val()
    @model.set email: @$('#contact_email').val()
    @model.set phone: @$('#contact_phone').val()
    @model.set listing_id: @listing.id
    @model.save({"name": @$el.find("#contact_name").val(),"email": @$el.find("#contact_email").val(),"phone": @$el.find("#contact_phone").val(), "listing_id": @listing.id},{
    success: ->
      console.log("succeess")
      $("#modal-window").modal('hide');
      $('.alert').alert()
      $('.alert').css('display', 'block')
      $('.message').html("Contact Added Succeessfully")
      window.issues.fetch({reset:true})    
      Backbone.history.navigate('#/listings', {trigger: true})
    error: (@model, response)->
      console.log(response)
      Backbone.history.navigate('#/contacts/new', {trigger: true})
    })


  render: ->
    $(@el).html(@template(contact: @model, contacts: @collection))
    this
