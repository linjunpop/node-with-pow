connect = require("connect")
http = require("http")
root = __dirname

console.log "root: %s", root

app = connect()
  .use(connect.directory(root))
  .use(connect.static(root))
http.createServer(app).listen 1337

