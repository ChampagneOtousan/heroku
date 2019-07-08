require "sinatra"
require "sinatra/activerecord"
require "sinatra/flash"
require "sqlite3"
require "rake"
require "httparty"

enable :sessions

user = User.new

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
