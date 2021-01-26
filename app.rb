require './lib/bookmark'
require 'sinatra/base'

class BookmarkManager < Sinatra::Base

  get '/' do 
    erb :index
  end

  post '/list' do 
    redirect '/bookmarks'
  end

  get '/bookmarks' do 
    @bookmarks = Bookmark.all

    erb :bookmarks
  end 

  run! if app_file == $0
end 
