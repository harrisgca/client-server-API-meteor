Meteor.startup ->
	# HTTP.get "http://glenndama.herokuapp.com/api/people", (error, result) ->
	#   if error
	#     console.log "error", error
	#   if result
  #     console.log result.data
  Meteor.methods
    serverApi: ->
      try
        result = HTTP.get "http://glenndama.herokuapp.com/api/people?limit=5"
        result.data
      catch error
        false
