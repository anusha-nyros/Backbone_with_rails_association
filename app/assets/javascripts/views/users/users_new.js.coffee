class BackbonerailsApp.Views.UsersNew extends Backbone.View

  template: JST['users/new']

  render: ->
    $(@el).html(@template(collection: @collection, resource: @model))
    this
