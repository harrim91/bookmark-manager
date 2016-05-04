require 'sinatra/base'
require_relative 'models/link'

class BookmarkManager < Sinatra::Base
  get '/links' do
    @links = Link.all
    erb :index
  end

  get '/links/new' do
    erb :newlink
  end

  post '/link/add' do
    Link.create(url: "#{params[:url]}", title: "#{params[:Title]}")
    redirect '/links'
  end

  run! if app_file == $0
end
