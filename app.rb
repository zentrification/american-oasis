require 'sinatra'

get '/' do
  #slim :'chapters/home'
  slim :'chapters/chapter1'
end

get '/chapters/:page' do
  page = 'chapters/chapter' + params[:page]
  slim page.to_sym
end
