# LocataireShow: Event Handlers and Helpers
Template.LocataireShow.events
# Example:
#  "click .selector": (e, tmpl) ->
#

Template.LocataireShow.helpers
  months: ->
    status = (start, m) ->
      current = moment App.Constants.Current, "YYYY-MM"
      month = moment m, "YYYY-MM"
      if month.isBefore(moment(start, "YYYY-MM"))
        return "before_start"
      else if month.isSame(current, 'month')
        return "current"
      else if month.isBefore(current, 'month')
        #Past month
        return "past"
      # "success"
      "future"

    _.map App.months.get(), (m) =>
      month:m
      locataire:@
      status: status(@start, m)


# Example:
#   items: ->
#

# LocataireShow: Lifecycle Hooks
Template.LocataireShow.created = ->

Template.LocataireShow.rendered = ->

Template.LocataireShow.destroyed = ->
