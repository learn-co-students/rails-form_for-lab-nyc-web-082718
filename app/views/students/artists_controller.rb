class ArtistsController < ApplicationController

  configure do
    set :public_folder, 'public'
    set :views, 'app/views/artists'
    set :method_override, true
  end

  get '/artists' do
    @artists = Artist.all
    erb :index
  end

  get '/artists/new' do
    erb :new
  end

  post '/artists' do
    @artist = Artist.create(params)
    redirect "artists/#{@artist.slug}"
  end

  get '/artists/:slug' do
    @artist = Artist.find_by_slug(params[:slug])
    erb :show
  end

  get '/artists/:slug/edit' do
    @artist = Artist.find_by_slug(params[:slug])
    erb :edit
  end

  patch '/artists/:slug' do
    @artist = Artist.find_by_slug(params[:slug])
    @artist.update(name: params[:name])
    redirect "artists/#{@artist.slug}"
  end

  delete '/artists/:slug/delete' do
    @artist = Artist.find_by_slug(params[:slug])
    @artist.delete
    redirect :delete
  end

end
