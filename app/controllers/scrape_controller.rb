class ScrapeController < ApplicationController
	def scrape	
		require 'nokogiri'
    require 'open-uri'
    url = "http://www.ietlucknow.edu/result.htm"
    data = Nokogiri::HTML(open(url))
    @links = data.css('#inner_text_1 a')
	end	
end
