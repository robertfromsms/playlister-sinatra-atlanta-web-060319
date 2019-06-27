class GenresController < Sinatra::Base
	set :views, "app/views/genres"

	get '/genres' do
		@genres = Genre.all
    	erb :index
  	end

  	get '/genres/new' do
  		erb :new
  	end

  	post '/genres' do
  		Genre.create(params)
  		redirect '/genres'
  	end
end
