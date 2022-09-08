express = require "express"
fs = require "fs"

http = express()

http.get "/", (_, res) -> res.sendFile __dirname + "/index.html"

http.get "/random", (req, res) ->
    index = fs.readdirSync "webm"
    victim = index[Math.floor Math.random() * index.length]
    res.redirect 302, "/webm/" + victim

http.use "/webm", express.static "webm"

http.listen 5463