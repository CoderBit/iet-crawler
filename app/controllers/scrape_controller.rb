class ScrapeController < ApplicationController
	require 'resolv-replace'
	def scrape	
		require 'nokogiri'
    require 'open-uri'
    url = "http://www.ietlucknow.edu/result.htm"
    data = Nokogiri::HTML(open(url))
    @links = data.css('#inner_text_1 img , #inner_text_1 a')
	end	

	def ticscrape
		require 'nokogiri'
    require 'open-uri'
    url = "http://www.ietlucknow.edu/"
    data = Nokogiri::HTML(open(url))
    @links = data.css('marquee a')
  end  
end
