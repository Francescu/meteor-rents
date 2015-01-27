# EstateAdd: Event Handlers and Helpers
Template.EstateAdd.events
  "click .add-reset": ->
    Template.EstateAdd.resetForm()

  "submit #add-form": (event, tmpl) ->
    event.preventDefault()
    loc =
      name: $.trim($("#add-name").val())
      address: $.trim($("#add-address").val())
      phone: $.trim($("#add-phone").val())
      rent: parseFloat($("#add-rent").val())
      start: $("#add-start").val()
      active: true

    if loc.name.length < 3
      alert("Il faut entrer un nom de locataire (au moins 3 lettres)")
      return false
    if not loc.rent > 0
      alert("Il faut entrer un loyer > 0")
      return false
    if !moment(loc.start, "YYYY-MM").isValid()
      alert("Il faut entrer une date de depart valide")
      return false
    Locataires.insert(loc)
    Template.EstateAdd.resetForm()
    $("#addModal").modal('hide')
    false
# Example:
#  "click .selector": (e, tmpl) ->
#

Template.EstateAdd.helpers
# Example:
#   items: ->
#

Template.EstateAdd.resetForm = ->
  $('#add-form').each -> @reset()
# EstateAdd: Lifecycle Hooks
Template.EstateAdd.created = ->

Template.EstateAdd.rendered = ->
  $('#add-start').val(moment().format("YYYY-MM"))
  $('#add-start').datepicker
    format: "yyyy-mm"
    minViewMode: 1
    language: "fr"
    autoclose: true
    todayHighlight: true

Template.EstateAdd.destroyed = ->
