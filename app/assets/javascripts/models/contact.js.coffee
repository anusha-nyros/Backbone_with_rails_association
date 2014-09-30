class BackbonerailsApp.Models.Contact extends Backbone.Model

   urlRoot : '/contacts'


   validate: (attrs) ->
     errors = [];
     if (!attrs.phone)
       $('#data').html("Please Fill out Phone Number")
       $('#contact_phone').focus()

     if (!/[0-9]{10}/.test(attrs.phone))
       $('#data').html("Invalid PhoneNumber")
       $('#contact_phone').focus()
     errors.length > 0 ? errors : false;
