module.exports =
  name: "crutch"
  url: '/crutch/:name/:from'
  fields: [
    { name: 'Name', field: 'name'}
    { name: 'From', field: 'from'}
  ]

  register: (app, output) ->
    app.get '/bus/:name/:from', (req, res) ->
      message = "Christ on a crutch, #{req.params.name}, don't be such a fucking muppet."
      subtitle = "- #{req.params.from}"
      output(req, res, message, subtitle)