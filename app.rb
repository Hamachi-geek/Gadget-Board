require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

require 'open-uri'
require 'json'
require 'net/http'

require 'sinatra/activerecord'
require './models'

get '/' do
    @articles = Article.all.order ('id desc')
    erb :index
end


get '/comment' do
    Article.create(comment: params[:comment])
    erb :index
end
