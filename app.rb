require 'rubygems'
require 'sinatra'

get "/" do
  erb File.read("public/index.html")
end

get "/:url" do
  if  File.exists? "public/#{params[:url]}.html"
    erb File.read "public/#{params[:url]}.html"
  end
end