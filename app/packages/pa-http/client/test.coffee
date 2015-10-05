# Session.setDefault "persons", [{first_name: "No people found", last_name:""}]
# @GH.template = "The Player"

Template.test.helpers
  personsClient: ->
    Session.get "personsClient"
  personsServer: ->
    Session.get "personsServer"

Template.test.events
  "click #client": ->
    this.getPeople()
  "click #server": (event, template) ->
    console.log this
    # glenn = this.getPeople()
    this.getServer()
    # console.log glenn
    # console.log this.getPeople()
    # Session.set('persons', this.getPeople())
    # Session.set "persons", apiData
    # console.log  'apiData:',apiData
