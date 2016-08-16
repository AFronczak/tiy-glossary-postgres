require_relative 'models'

require 'active_record'
require 'sinatra'

require 'sinatra/reloader' if development?

after do
  ActiveRecord::Base.connection.close
end

get "/" do
  @terms = Term.all
  @categories = Category.all

  @lastfive = @terms.last(5)

  haml :homepage
end

get "/terms" do
  @terms = Term.all

  haml :terms
end

#create new term
get "/terms/new" do
  @terms = Term.all

  haml :terms_new
end

post "/terms/new" do
  term = Term.create(params)

  redirect "/terms/#{term.id}"
end

#show term
get "/terms/:id" do
  id = params["id"]
  @term = Term.find_by(id: id)

  haml :terms_show
end

#put update
put '/terms/:id' do
  id = params["id"]
  term = Term.find_by(id: id)
  if term
    term.update_attributes(params["term"])
    redirect "/terms/#{term.id}"
  else
    redirect "/"
  end
end

#edit terms
get "/terms/:id/edit" do
  id = params["id"]
  @term = Term.find_by(id: id)

  haml :terms_edit
end

#show categories
get "/categories" do
  @categories = Category.all

  haml :categories
end

#show category
get "/categories/:id" do
  id = params["id"]
  @category = Category.find_by(id: id)

  haml :categories_show
end

get "/categories/new" do
  @category = Category.all

  haml :categories_new
end
#create new
post "/categories/new" do
  category = Category.create(params)

  redirect "/categories/#{category.id}"
end
