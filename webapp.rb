#coding:utf-8
require 'sinatra'


before do
  content_type:html
end

get '/' do
  content_type:json
  "Ya! :)   I'm kuwai-webapp, made by Naohiro OHTA. Please access /index.html"
end

get '/page/*' do |page_name|
  erb page_name.intern
end

get '/list_pages' do
  content_type:json
  require 'json'
  prefix = "./views/"
  pages = Dir.glob("#{prefix}*.erb")
  pages.each do |page|
    page[0,prefix.size] = ''
    page.sub!(/\.erb/,"")
  end
  pages.to_json
end
