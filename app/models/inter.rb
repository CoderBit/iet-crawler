require 'sinatra'
require 'nokogiri'
require 'open-uri'

get '/' do
	url = "http://www.ietlucknow.edu/result.htm"
	data = Nokogiri::HTML(open(url))
	@links = data.css('#inner_text_1 a')
	erb :iet_show
end