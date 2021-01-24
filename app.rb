require 'sinatra/base'

class BookmarkManager < Sinatra::Base

    get '/' do 
        'We have lift off'
    end 

    rub! if app_file == $0
end 