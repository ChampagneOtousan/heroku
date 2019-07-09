require "sinatra"
require "sinatra/activerecord"
# require "sinatra/flash"
# require "sqlite3"
# require "rake"

enable :sessions

class User < ActiveRecord::Base
  # attr_accessor :first_name, :last_name, :email, :date_of_birth, :screen_name
  # @first_name = first_name
  # @last_name = last_name
  # @email = email
  # @date_of_birth = date_of_birth
  # @screen_name = screen_name
end

# LOCAL
ActiveRecord::Base.establish_connection(adapter: "sqlite3", database: "./db.sqlite3")
# HEROKU

# require "active_record"
# ActiveRecord::Base.establish_connection(ENV["DATABASE_URL"])

get "/" do
  erb :home
end

get "/signup" do
  erb :signup
end

post "/signup" do
  user = User.new(first_name: params[:first_name], last_name: params[:last_name], email: params[:email], birthday: params[:birthday], username: params[:username], password: params[:password])
  user.save
  redirect "/"
end

get "/login" do
  erb :login
end

post "/login" do
  username = params[:username]
  given_password = params[:password]
  user = User.find_by(username: username)
  session[:user] = user
  redirect "/"
end

get "/profile" do
  erb :profile
end

get "/settings/account" do
  erb :"settings/account"
end
