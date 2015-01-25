#
# Add query methods like this:
#  Estate.findPublic = ->
#    Estate.find is_public: true
#
Locataires.allow
  insert: (userId, doc) ->
    if userId
      return true
    false

  update: (userId, doc, fieldNames, modifier) ->
    false

  remove: (userId, doc) ->
    false
#
# Estates.deny
#   insert: (userId, doc) ->
#     false
#
#   update: (userId, doc, fieldNames, modifier) ->
#     false
#
#   remove: (userId, doc) ->
#     false
