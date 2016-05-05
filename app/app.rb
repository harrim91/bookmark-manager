ENV['RACK_ENV'] ||= "development"

require 'sinatra/base'
require './app/data_mapper_setup'

class BookmarkManager < Sinatra::Base

  get '/' do
    redirect '/links'
  end

  get '/links' do
    @links = Link.all
    erb :index
  end

  get '/links/new' do
    erb :newlink
  end

  post '/link/new' do
    link = Link.create(url: params[:url], title: params[:title])
    tag = Tag.create(name: params[:tag])
    link.tags << tag
    link.save
    redirect '/links'
  end

  post '/tags' do
    redirect "tags/#{params[:filter]}"
  end

  get '/tags/:filter' do
    tag = Tag.first(name: params[:filter])
    @links = tag ? tag.links : []
    erb :index
  end

  run! if app_file == $0
end
