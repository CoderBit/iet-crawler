namespace :scrape do
  desc "Rake task to get result links"
  task :fetch => :environment do
    require 'nokogiri'
    require 'open-uri'
    url = "http://www.ietlucknow.edu/result.htm"
    data = Nokogiri::HTML(open(url))
    @links = data.css('#inner_text_1 a')
    puts "#{Time.now} - Success!"
  end
end
