class BackbonerailsApp.Views.UsersIndex extends Backbone.View

  initialize: ->
    template: _.template($('#user_session_template').html())

  render: ->
    $(@el).html(@template)
    this
