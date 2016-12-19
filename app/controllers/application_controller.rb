class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    # placeholder for rspec
    erb :index
  end

  get '/recipes/new' do
    # form
    erb :new
  end


  get '/recipes' do
    @recipes = Recipe.new(:name => params[:name], :ingredients => params[:ingredients], :cook_time => params[:cook_time])
    # displays a list of recipes
    # contains links to each recipe's show page
    erb :index
  end


  post '/recipes/:id' do
    # displays recipe name, ingredients, cook time
    # contains link to delete the recipe
    # deletes via delete request
  end








end
