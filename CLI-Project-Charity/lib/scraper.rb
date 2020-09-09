

require 'nokogiri'
require 'open-uri'
require 'pry'

class Scraper

    def get_page
        Nokogiri::HTML(open("https://www.charitynavigator.org/index.cfm?bay=topten"))
    end

    def scrape_charity_index
        self.get_page.css("ul.toptenlist a")
    end
end
