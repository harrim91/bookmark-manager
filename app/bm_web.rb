require 'sinatra/base'
require './app/models/link'

class BookmarkManager < Sinatra::Base
  run! if app_file == $0



end
