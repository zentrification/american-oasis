require 'sinatra'

get '/chapters/:page' do
  @cloudfront = 'http://d2sc30funx5qzm.cloudfront.net'
  @cloudfront = ''
  @page = params[:page]
  file_location = 'chapters/chapter' + @page
  slim file_location.to_sym
end

get '/*' do
  @cloudfront = 'http://d2sc30funx5qzm.cloudfront.net'
  @cloudfront = ''
  slim :'chapters/chapter0'
end
