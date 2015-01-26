# LocataireShow: Event Handlers and Helpers
Template.LocataireShow.events
# Example:
#  "click .selector": (e, tmpl) ->
#

Template.LocataireShow.helpers
  months: ->
    _.map App.months.get(), (m) =>
      month:m
      locataire_id:@_id


# Example:
#   items: ->
#

# LocataireShow: Lifecycle Hooks
Template.LocataireShow.created = ->

Template.LocataireShow.rendered = ->

Template.LocataireShow.destroyed = ->
