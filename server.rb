require "sinatra"
require "sinatra/activerecord"
require "sinatra/flash"
require "sqlite3"
require "rake"
require "httparty"

enable :sessions

class User
  attr_accessor :first_name, :last_name, :email, :date_of_birth, :screen_name
  @first_name = first_name
  @last_name = last_name
  @email = email
  @date_of_birth = date_of_birth
  @screen_name = screen_name
end

get "/signup" do
  erb :signup
end

get "/" do
  erb :home
end

get "/profile" do
  erb :profile
end

get "/posts" do
  erb :posts
end

get "/settings/account" do
  erb :"settings/account"
end
