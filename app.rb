require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

require './models'

# set the db name (will be created if the
# db does not already exist)
set :database, "sqlite3:facebook.sqlite3"
