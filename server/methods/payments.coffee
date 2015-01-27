#
# Payments Methods
#

Meteor.methods
  'payments/add': (payment) ->
    #TODO: better payment check
    check payment, Object
    check @userId, String
    document = _.pick payment, ["locataire_id", "month", "amount", "method", "notes"]
    document.user_id = @user_id
    document.created_at = new Date()

    Payments.insert(document)

#
#   Example:
#    '/app/payments/update/email': function (email) {
#      Users.update({_id: this.userId}, {$set: {'profile.email': email}});
#    }
#
#
