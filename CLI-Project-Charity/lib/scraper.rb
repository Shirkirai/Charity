

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

    def make_charity_sites
      self.scrape_charity_index.each do |r|
        link = r.attr("href")
        link_name = r.text


end

def make_charity_sites
  self.scrape_charity_index.each do |link|
  end
end


things.each do |r|
  detail = "#{r.text}; link: #{r.attr("href")}"
  puts detail
end
