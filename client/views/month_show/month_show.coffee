# MonthShow: Event Handlers and Helpers
Template.MonthShow.events
  "click .payment-add-btn": (event, template) ->
    data = template.data
    Template.PaymentForm.show(data.locataire._id, data.month, 0)
# Example:
#  "click .selector": (e, tmpl) ->
#

Template.MonthShow.helpers
  panel_class: ->
    #TODO: depends on payments
    switch @status
      when "before_start" then "default"
      when "past" then "danger"
      when "current" then "primary"
      when "future" then "default"
      else "default" #success for green

  message: ->
    if @status == "before_start"
      "Non applicable (mois non-géré)"

  canAddPayment: ->
    if @status == "before_start"
      return false
    #if PAYMENT COMPLETED
      #false
    true
# Example:
#   items: ->
#

# MonthShow: Lifecycle Hooks
Template.MonthShow.created = ->

Template.MonthShow.rendered = ->

Template.MonthShow.destroyed = ->
