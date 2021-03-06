require 'sinatra/base'
require './app/models/link'

class BookmarkManager < Sinatra::Base

  get '/' do
    redirect '/links'
  end

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end

  post '/links' do
    Link.create title: params[:title], url: params[:url]
    redirect '/links'
  end

  run! if app_file == $0

end

