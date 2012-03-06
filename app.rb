require 'rubygems'
require 'sinatra'

set :public_folder, File.dirname(__FILE__)


get "/" do
  erb File.read("index.html")
end

get "/:url" do
  if  File.exists? "#{params[:url]}.html"
    erb File.read "#{params[:url]}.html"
  end
end