# MonthShow: Event Handlers and Helpers
Template.MonthShow.events
# Example:
#  "click .selector": (e, tmpl) ->
#

Template.MonthShow.helpers
  monthStatus: ->
    #TODO: get payments to set values here
    #http://getbootstrap.com/components/#panels-alternatives

    current = moment App.Constants.Current, "YYYY-MM"
    month = moment @.month, "YYYY-MM"

    if month.isBefore(moment(@locataire.start, "YYYY-MM"))
      return "default"
    else if month.isSame(current, 'month')
      return "primary"
    else if month.isBefore(current, 'month')
      #Past month
      return "danger"
    # "success"
    "default"
# Example:
#   items: ->
#

# MonthShow: Lifecycle Hooks
Template.MonthShow.created = ->

Template.MonthShow.rendered = ->

Template.MonthShow.destroyed = ->
