require 'nokogiri'
require 'httparty'
require 'byebug'

class Scraper
    def self.item_info
        # url = "https://livinglibations.com/collections/best-sellers"
        url= "https://www.sephora.com/shop/clean-skin-care?pageSize=300"

        unparsed_page = HTTParty.get(url)
        parsed_page = Nokogiri::HTML(unparsed_page)

        # item_text = parsed_page.css("#Collection > ul.grid.grid--uniform.grid--view-items > li > div")
        # item_text = parsed_page.css("body > div.css-o44is > div.css-138ub37 > div > div > div > div.css-1vuaplw > div.css-1r62q1w > main > div.css-111ktzd > div > div > div > div")

        item_text = parsed_page.css("body > div.css-o44is > div.css-138ub37 > div > div > div > div.css-1vuaplw > div.css-1r62q1w > main > div.css-111ktzd > div > div:nth-child(1)")

        items_array = []

        # byebug
        item_text.each do |item|
            # byebug
            item = {
                product_name: item.css("span.css-ktoumz")
            #    product_name: item.css("div.h4.grid-view-item__title.product-card__title").text,
            #    image: item.css("a").attribute("href").value
            }

            items_array << item
        end
        items_array
    end
end

# document.querySelector("#Collection > ul.grid.grid--uniform.grid--view-items > li:nth-child(3) > div")
# document.querySelector("span.css-ktoumz")

document.querySelector("body > div.css-o44is > div.css-138ub37 > div > div > div > div.css-1vuaplw > div.css-1r62q1w > main > div.css-111ktzd > div > div:nth-child(1) > div:nth-child(1)")