require 'rubygems'
require 'sinatra'

set :public_folder, File.dirname(__FILE__)

get "/" do
  erb File.read("index.html")
end