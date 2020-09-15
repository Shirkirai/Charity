

require 'nokogiri'
require 'open-uri'
require 'pry'

class Top10Charity::Scraper

    def get_page
        Nokogiri::HTML(open("https://www.charitynavigator.org/index.cfm?bay=topten"))
    end

    def scrape_charity_index
        self.get_page.css("ul.toptenlist a")
    end

    def make_charity_sites
      self.scrape_charity_index.each do |r|
        Top10Charity::Charities.new(r)
        #note to self = research into "from_index_page" function...
        #link = r.attr("href")
        #link_name = r.text
      end
    end

end
