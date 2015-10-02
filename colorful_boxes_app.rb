require "sinatra"
require "sinatra/reloader"

get "/" do
  erb(:index, {layout: :app_layout})
end

post "/box" do
  @red_box = params[:red_box]
  @green_box = params[:green_box]
  @blue_box = params[:blue_box]
  @red_sm_box = params[:red_sm_box]
  @green_sm_box = params[:green_sm_box]
  @blue_sm_box = params[:blue_sm_box]
  erb(:box, {layout: :app_layout})
end
