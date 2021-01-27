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

  get '/new' do
    erb :new
  end

  post '/bookmarks' do
    Bookmark.create(url: params[:url], title: params[:title])
    redirect '/bookmarks'
  
  end

  enable :sessions, :method_override

  delete '/bookmarks/:id' do
  # let's print out the form params
  Bookmark.delete(id: params[:id])
  redirect '/bookmarks'
  end

  run! if app_file == $0
end 
