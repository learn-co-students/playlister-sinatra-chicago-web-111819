class SongsController < ApplicationController

    get '/songs' do
        @songs = Song.all.order(:name)
        erb :'songs/index'
    end

    get '/songs/new' do
        @genres = Genre.all.uniq
        erb :'songs/new'
    end

    post '/songs' do
        binding.pry
        song = Song.new(name: params[:song][:name], genre: params[:song][:genre_id].to_i)
        artist = Artist.find_or_create_by(name: params[:artist][:name])
        song.artist = artist
        # song.save
        redirect "songs/#{song.slug}"
    end



    get '/songs/:slug' do
        @song = Song.find_by_slug(params[:slug])
        if !@song
            redirect '/songs'
        else
            erb :'songs/show'
        end
    end
    
end