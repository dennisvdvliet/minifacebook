require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

require './models'

# set the db name (will be created if the
# db does not already exist)
set :database, "sqlite3:facebook.sqlite3"

get "/all" do
    erb :all, locals: {:users => User.all}
end

get "/profile" do
    erb :all, locals: {:users =>
        User.where({:id => params[:id]})
    }
end

get "/new" do
    erb :new_user
end

post "/new" do
    User.create(params)
    redirect "/all"
end

