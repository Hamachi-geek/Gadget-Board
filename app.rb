require 'bundler/setup'
Bundler.require
require 'sinatra/reloader' if development?

require 'open-uri'
require 'json'
require 'net/http'

require 'sinatra/activerecord'
require './models'


before do
end


get '/' do
    @articles = Article.all
    erb :index
end

post '/comment' do
    Article.create!({comment: params[:comment]})
    redirect '/'
end
