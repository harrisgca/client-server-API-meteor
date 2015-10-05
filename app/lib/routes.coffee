Router.route '/',
  name: 'home'
  controller: 'HomeController'
  where: 'client'

Router.route 'people',
  name: 'people'
  controller: 'PeopleController'
  where: 'client'
