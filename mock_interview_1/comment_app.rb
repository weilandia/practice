require 'sinatra'
require_relative 'comment.rb'

get '/' do
  erb :new
end

post '/create' do
  Comment.new(params[:comment]).save_to_db
  redirect to('/index')
end

get '/index' do
  @comments = Comment.all
  erb :index
end
