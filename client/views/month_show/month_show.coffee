# MonthShow: Event Handlers and Helpers
Template.MonthShow.events
# Example:
#  "click .selector": (e, tmpl) ->
#

Template.MonthShow.helpers
  monthStatus: ->
    #TODO: put in another template and actual values
    #http://getbootstrap.com/components/#panels-alternatives

    current = moment App.Constants.Current, "YYYY-MM"
    self = moment @.month, "YYYY-MM"

    if self.isSame(current, 'month')
      return "primary"
    else if self.isBefore(current, 'month')
      #Past month
      return "danger"
    "success"
# Example:
#   items: ->
#

# MonthShow: Lifecycle Hooks
Template.MonthShow.created = ->

Template.MonthShow.rendered = ->

Template.MonthShow.destroyed = ->
