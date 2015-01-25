@Pay = new Mongo.Collection('pay');
#
# Add query methods like this:
#  Pay.findPublic = ->
#    Pay.find is_public: true
#