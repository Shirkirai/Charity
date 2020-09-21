

require 'nokogiri'
require 'open-uri'
require 'pry'

#class Top10Charity::Scraper

class Scraper
  
  
    def get_page
        Nokogiri::HTML(open("https://www.charitywatch.org/top-rated-charities/all-charities"))
    end

    def scrape_charity_index
        self.get_page.css("#list-all")
    end
    
    def scrape_charity_sites
      self.get_page.css("#list-all .mb-4 a")
    end

    def make_charity_sites
      #self.scrape_charity_index.each do |r|
        #charity_titles = r.css(".mb-3").text
      #end
      self.scrape_charity_sites.each do |s|
        charity_site = s.attr("href")
        #this will produce a list of all the htmls
      end
    end
    #def make_charity_sites
      #self.scrape_charity_index.each do |r|
        #Top10Charity::Charities.new(r)
        #note to self = research into "from_index_page" function...
       # link = r.attr("href")
        #link_name = r.text
     # end
    #end

end
