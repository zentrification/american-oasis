require 'sinatra'

get '/' do
  #slim :'chapters/home'
  slim :'chapters/chapter1'
end

get '/chapters/:page' do
  @page = params[:page]
  file_location = 'chapters/chapter' + @page
  slim file_location.to_sym
end
