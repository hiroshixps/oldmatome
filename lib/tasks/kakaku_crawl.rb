require 'rubygems'
require "#{Rails.root}/app/models/product"
require 'bundler/setup'
Bundler.require

options = {
  :user_agent => "AnemoneCrawler/0.0.1",
  :delay => 0,
  :depth_limit => 2,
}
@url ='http://kakaku.com/item/K0000654768/'
Anemone.crawl(@url, options) do |anemone|

  anemone.focus_crawl do |page|
    page.links.keep_if { |link|
      link.to_s.match(/\/spec\/|\/item\/|\/pc\/|\/kaden\/|\/camera\/|\/keitai\//)
    }
  end

  anemone.on_every_page do |page|
    if page.doc
      if !Product.find_by(product_name: page.doc.xpath('//h2').inner_text) && page.url.to_s.match(/\/spec\//)
        p page.url.to_s
        p page.doc.xpath('//h2').inner_text
        p page.doc.xpath('//li[@class = "makerLabel"]/a').inner_text
        p page.doc.xpath('//li[@class = "seriesLabel"]/a').inner_text
        p page.doc.xpath('//div[@class = "path btmPath"]/*[2]').inner_text
        p page.doc.xpath('//div[@class = "path btmPath"]/*[3]').inner_text
        p page.doc.xpath('//div[@id = "imgBox"]/a/img/@src').inner_text
        p page.doc.xpath('//span[@id = "minPrice"]/a').inner_text.gsub(/[^0-9]/,"").to_i
        @product = Product.new(
          product_name: page.doc.xpath('//h2').inner_text,
          brand: page.doc.xpath('//li[@class = "makerLabel"]/a').inner_text,
          series: page.doc.xpath('//li[@class = "seriesLabel"]/a').inner_text,
          new_price: page.doc.xpath('//span[@id = "minPrice"]/a').inner_text.gsub(/[^0-9]/,"").to_i,
          img_url: page.doc.xpath('//div[@id = "imgBox"]/a/img/@src').inner_text,
          kakaku_url: page.url.to_s,
          l_category: page.doc.xpath('//div[@class = "path btmPath"]/*[2]').inner_text,
          s_category: page.doc.xpath('//div[@class = "path btmPath"]/*[3]').inner_text,
          spec: page.doc.xpath('//table').inner_text
        )
       @product.save
        # 中カテゴリは取得できないので、マスタからさがして代入
       if @product
        @product.m_category = MCategory.find_by_id(SCategory.find_by_s_category(@product.s_category).m_id).m_category 
       @product.save
       end   
      end

    end
  end

end

#@url2 = @url + "spec/#tab"
#Anemone.crawl(@url2, options) do |anemone|

#  anemone.focus_crawl do |page|
#    page.links.keep_if { |link|
#      link.to_s.match(/test/)
#    }
#  end

#  anemone.on_every_page do |page|
#    if page.doc
#      @products = Product.find_by(product_name: page.doc.xpath('//h2').inner_text)
#     @product.update_attributes(spec: page.doc.xpath('//table').inner_text)
#      p page.url.to_s
#      p page.doc.xpath('//table').inner_html
#
#    end
#  end

#end
