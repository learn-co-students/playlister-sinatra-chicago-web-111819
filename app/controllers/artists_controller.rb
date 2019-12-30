class ArtistsController < ApplicationController

    get '/artists' do
        @artists = Artist.all.order(:name)
        erb :'artists/index'
    end

    get '/artists/:slug' do
        @artist = Artist.find_by_slug(params[:slug])
        if !@artist
            redirect '/artists'
        else
            erb :'artists/show'
        end
    end
end