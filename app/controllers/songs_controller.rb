class SongsController < Sinatra::Base
	set :views, "app/views/songs"

	get '/songs' do
		@songs = Song.all
    	erb :index
  	end

  	# get '/songs/new' do
   #    @artists = Artist.all
   #    @genres = Genre.all
  	# 	erb :new
  	# end

  	# post '/songs' do
  	# 	Song.create(params)
  	# 	redirect '/songs'
  	# end
end