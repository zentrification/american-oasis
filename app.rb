require 'sinatra'


get '/' do
  #slim :'chapters/home'
  slim :'chapters/chapter1'
end

get '/chapters/:page' do
  #@cloudfront = 'http://d3m4uggloxf4lo.cloudfront.net'
  @page = params[:page]
  file_location = 'chapters/chapter' + @page
  slim file_location.to_sym
end
