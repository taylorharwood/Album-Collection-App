class AlbumCollectionApp < Sinatra::Base

  #root
  get "/" do
    redirect "/albums"
  end

  #index
  get "/albums" do
    @albums = Album.all
    erb :"albums/index"
  end

  #about page
  get "/about" do
    erb :"/about"
  end

  #new
  get "/albums/new" do
    @album = Album.new
    erb :"albums/new"
  end

  #create
  post "/albums" do
    @album = Album.new params[:album]
    if @album.save
      # redirect "/album/#{@album.id}"
      redirect "/albums"
    else
      erb :"albums/new"
    end
  end

  #show
  get "/albums/:id" do
    @album = Album.find params[:id]
    erb :"albums/show"
  end

  #edit
  get "/albums/:id/edit" do
    @album = Album.find params[:id]
    erb :"albums/edit"
  end

  #update
  put "/albums/:id" do
    puts params
    @album = Album.find params[:id]
    if @album.update_attributes params[:album]
      redirect "/albums"
    else
      erb :"albums/new"
    end
  end

  #destroy
  delete "/albums/:id" do
    @album = Album.find params[:id]
    if @album.destroy
      redirect "/albums"
    else
      redirect "/albums/#{@album.id}"
    end
  end

end
