# EstateList: Event Handlers and Helpers
Template.EstateList.events
# Example:
#  "click .selector": (e, tmpl) ->
#

Template.EstateList.helpers
# Example:
#   items: ->
#
  locataires: ->
    Locataires.find({active: true} )
  months: ->
    



# EstateList: Lifecycle Hooks
Template.EstateList.created = ->

Template.EstateList.rendered = ->

Template.EstateList.destroyed = ->
