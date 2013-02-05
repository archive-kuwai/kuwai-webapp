#coding:utf-8
require 'sinatra'

before do
  content_type:html
end

get '/' do
  content_type:json
  "Ya! :)   I'm kuwai-webapp, made by Naohiro OHTA"
end

get '/page/*' do |page_name|
  erb page_name.intern
end
