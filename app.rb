require 'sinatra'


get '/' do
  #@cloudfront = 'http://d1asf1ls1r6mip.cloudfront.net/'
  #slim :'chapters/home'
  slim :'chapters/chapter1'
end

get '/chapters/:page' do
  #@cloudfront = 'http://d1asf1ls1r6mip.cloudfront.net/'
  @page = params[:page]
  file_location = 'chapters/chapter' + @page
  slim file_location.to_sym
end
