require 'sinatra'

get '/chapters/:page' do
  @cloudfront = 'http://assets.american-oasis.com.s3-website-us-east-1.amazonaws.com/public'
  @page = params[:page]
  file_location = 'chapters/chapter' + @page
  slim file_location.to_sym
end

get '/*' do
  @cloudfront = 'http://assets.american-oasis.com.s3-website-us-east-1.amazonaws.com/public'
  slim :'chapters/chapter0'
end
