#
# Add query methods like this:
#  Pay.findPublic = ->
#    Pay.find is_public: true
#
Payments.allow
  insert: (userId, doc) ->
    false

  update: (userId, doc, fieldNames, modifier) ->
    false

  remove: (userId, doc) ->
    false

# Payments.deny
#   insert: (userId, doc) ->
#     false
#
#   update: (userId, doc, fieldNames, modifier) ->
#     false
#
#   remove: (userId, doc) ->
#     false
