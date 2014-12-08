postgres = require "pg"
cson = require "cson"
config = cson.parseFiler("../../env/#{process.current_env}/#{process.current_env}")
{address, port, username, password} = config.db.postgres
con_string = "postgres://#{username}:#{password}@#{address}:#{port}/#{database}"

class Postgres =

  constructor: ->
    postgres.connect con_string, (err, client, done) ->
      # do something
      

# singleton because only connect once
pg = new Postgres
module.exports = pg
