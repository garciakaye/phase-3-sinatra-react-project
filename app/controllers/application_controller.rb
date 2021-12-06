class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/lists" do
    list = List.all
    list.to_json
  end

  get "/lists/:id" do
    list = List.find(params[:id])
    list.to_json(include: :items)
  end

  delete "/lists/:id" do
    list = List.find(params[:id])
    list.destroy
    list.to_json
  end

  post "/lists" do
    list = List.create(
      title: params[:title]
    )
    list.to_json
  end

  get "/items" do
    item = Item.all
    item.to_json
  end

  get "/items/:id" do
    item = Item.find(params[:id])
    item.to_json
  end

  delete "/items/:id" do
    item = Item.find(params[:id])
    item.destroy
    item.to_json
  end

  post "/items" do
    item = Item.create(
      name: params[:name],
      notes: params[:notes],
      list_id: params[list_id]
    )
    item.to_json
  end

  patch "/items/:id" do
    item = Item.find(params[:id])
    item.update(
      name: params[:name],
      notes: params[:notes]
    )
  end

end
