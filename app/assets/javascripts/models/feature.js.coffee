class BackbonerailsApp.Models.Feature extends Backbone.Model
  urlRoot: '/features'

  initialize: (model, args) ->
    @url = ->
      if args
        args.listings_url + "/features"
      else
        "/features"

