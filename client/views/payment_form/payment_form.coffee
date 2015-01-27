# PaymentForm: Event Handlers and Helpers
Template.PaymentForm.events
  "submit #payment-form": ->
    event.preventDefault()
    payment =
      type: $('#payment-form input[name=payment-type]:checked').val()
      locataire_id: $.trim($("#payment-locataire").val())
      notes: $.trim($("#payment-notes").val())
      amount: parseFloat($("#payment-amount").val())
      month: $("#payment-month").val()

    console.log payment
    false
# Example:
#  "click .selector": (e, tmpl) ->
#

Template.PaymentForm.helpers
  payment_types: ->
    [
      value: Payments.Type.Cheque
      icon: 'fa fa-newspaper-o'
    ,
      value: Payments.Type.Especes
      icon: 'fa fa-money'
    ,
      value: Payments.Type.Virement
      icon: 'fa fa-exchange'
    ,
      value: Payments.Type.CB
      icon: 'fa fa-credit-card'
    ]
# Example:
#   items: ->
#
Template.PaymentForm.reset = ->
  $("#payment-form").each -> @reset()

Template.PaymentForm.show = (locataire_id, month, defaultAmount) ->
  Template.PaymentForm.reset()
  check locataire_id, String
  #TODO: Check here with moments?
  check month, String

  $("#payment-locataire").val(locataire_id)
  $("#payment-month").val(month)
  $("#payment-amount").val(defaultAmount)
  $("#paymentFormModal").modal('show')


# PaymentForm: Lifecycle Hooks
Template.PaymentForm.created = ->

Template.PaymentForm.rendered = ->
  #TODO: defaultValue
  #TODO: disable incorrect months
  $('#payment-month').datepicker
    format: "yyyy-mm"
    minViewMode: 1
    language: "fr"
    autoclose: true
    todayHighlight: true

Template.PaymentForm.destroyed = ->
