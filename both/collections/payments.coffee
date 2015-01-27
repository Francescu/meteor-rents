@Payments = new Mongo.Collection 'payments'

Payments.Type =
  CB: "CB"
  Cheque: "Cheque"
  Especes: "Especes"
  Virement: "Virement"
#
# Add query methods like this:
#  Pay.findPublic = ->
#    Pay.find is_public: true
#
