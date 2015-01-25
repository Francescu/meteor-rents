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
    dates = []
    for i in [App.Constants.PastMonths..1]
      dates.push moment().subtract(i, 'month').format("YYYY-MM")

    dates.push App.Constants.Current

    for i in [1..App.Constants.FutureMonths]
      dates.push moment().add(i, 'month').format("YYYY-MM")

    return dates
  monthStatus: ->
    #TODO: put in another template and actual values
    #http://getbootstrap.com/components/#panels-alternatives
    console.log "----"

    current = moment App.Constants.Current, "YYYY-MM"
    self = moment @, "YYYY-MM"
    if self.isSame(current, 'month')
      return "primary"
    else if self.isBefore(current, 'month')
      #Past month
      return "danger"
    "success"


# EstateList: Lifecycle Hooks
Template.EstateList.created = ->

Template.EstateList.rendered = ->

Template.EstateList.destroyed = ->
