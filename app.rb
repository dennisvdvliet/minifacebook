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


get "/profile/:id" do
    erb :all, locals: {:users =>
        User.where({:id => params[:id]})
    }
end

get "/users/:id/edit" do
    user = User.find(params[:id])
    erb :new_user, locals: {:user => user}
    # create a new form to edit each user
end

post "/users/:id/edit" do
    User.update(params[:id], :name => params[:name], :gender => params[:gender], :city => params[:city], :email => params[:email])
    redirect "/users/"+params[:id]+"/edit"
end

get "/new" do
    erb :new_user
end

post "/new" do
    User.create(params)
    redirect "/all"
end

