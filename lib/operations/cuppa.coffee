module.exports =
  name: "crutch"
  url: '/crutch/:name/:from'
  fields: [
    { name: 'Name', field: 'name'}
    { name: 'From', field: 'from'}
  ]

  register: (app, output) ->
    app.get '/bus/:name/:from', (req, res) ->
      message = "Hey, #{req.params.name}, how about a nice cup of shut the fuck up?"
      subtitle = "- #{req.params.from}"
      output(req, res, message, subtitle)