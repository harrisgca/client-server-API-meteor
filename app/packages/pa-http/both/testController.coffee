@GH = {}
@GH.controller = "test"

Session.setDefault "personsClient", [{first_name: "No people found", last_name:""}]
Session.setDefault "personsServer", [{first_name: "No people found", last_name:""}]


@TestController = RouteController.extend
  getPeople: ->
    url = "http://glenndama.herokuapp.com/api/people?limit=5"
    HTTP.get url, (error, result) ->
      if error
        console.log "error", error
      if result
        Session.set('personsClient',result.data)
        return
  getServer: ->
    Meteor.call 'serverApi', (err,result) ->
      if err
        console.log err
      if result
        console.log "Server method called!"
        Session.set('personsServer',result)

  data: ->
    data = {}
    data.getPeople = this.getPeople
    data.getServer = this.getServer
    data
