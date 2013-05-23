require 'sinatra'

get '/' do
  slim :home
end

get '/chapters/:page' do
  page = 'chapters/' + params[:page]
  slim page.to_sym
end
