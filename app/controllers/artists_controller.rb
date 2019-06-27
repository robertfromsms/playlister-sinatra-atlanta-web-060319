class ArtistsController < Sinatra::Base
	set :views, "app/views/artists"

	get '/artists' do
		@artists = Artist.all
    	erb :index
  	end

  	get '/artists/new' do
  		erb :new
  	end

  	post '/artists' do
  		Artist.create(params)
  		redirect '/artists'
  	end
end
