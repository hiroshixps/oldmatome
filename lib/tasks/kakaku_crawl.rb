require 'rubygems'
require "#{Rails.root}/app/models/product"
require 'bundler/setup'
Bundler.require

options = {
  :user_agent => "AnemoneCrawler/0.0.1",
  :delay => 0,
  :depth_limit => 6,
}
@url ='http://kakaku.com/pc/'
Anemone.crawl(@url, options) do |anemone|

  anemone.focus_crawl do |page|
    page.links.keep_if { |link|
      link.to_s.match(/\/item\//)   #ここの条件増やすとエラー
    }
  end

  anemone.on_every_page do |page|
    if page.url.to_s.match(/\/spec\/$/)
      doc = Nokogiri::HTML(open(page.url.to_s), nil, 'CP932')

      p page.url.to_s
      #     p doc.xpath('//h2').inner_text
      #     p doc.xpath('//li[@class = "makerLabel"]/a').inner_text
      #     p doc.xpath('//li[@class = "seriesLabel"]/a').inner_text
      #     p doc.xpath('//div[@class = "path btmPath"]/*[2]').inner_text
      #     p doc.xpath('//div[@class = "path btmPath"]/*[3]').inner_text
      #     p doc.xpath('//div[@id = "imgBox"]/a/img/@src').inner_text
      #     p doc.xpath('//span[@id = "minPrice"]/a').inner_text.gsub(/[^0-9]/,"").to_i
      #        p page.doc.xpath('//div[@id="mainLeft"]/table[@class = "tblBorderGray mTop15"]/tr').text

      @product = Product.new(
        product_name: doc.xpath('//h2').inner_text,
        brand: doc.xpath('//li[@class = "makerLabel"]/a').inner_text,
        series: doc.xpath('//li[@class = "seriesLabel"]/a').inner_text,
        new_price: doc.xpath('//span[@id = "minPrice"]/a').inner_text.gsub(/[^0-9]/,"").to_i,
        img_url: doc.xpath('//div[@id = "imgBox"]/a/img/@src').inner_text,
        kakaku_url: page.url.to_s,
        s_category: doc.xpath('//div[@class = "path btmPath"]/*[3]').inner_text
      )

      @th = doc.xpath('//div[@id="mainLeft"]/table[@class = "tblBorderGray mTop15"]/tr/th[@class = "itemviewColor03b textL"]')
      @td = doc.xpath('//div[@id="mainLeft"]/table[@class = "tblBorderGray mTop15"]/tr/td')

      for i in 0..@th.length-1  do 
        @product.spec[ @th[i].inner_text] = @td[i].inner_text   
        #          p @product.spec
      end
      @product.save
    end

    if @product
      @product.m_category = SCategory.find_by_s_category(@product.s_category).m_category.m_category 
      @product.l_category = SCategory.find_by_s_category(@product.s_category).l_category.l_category 
      @product.save
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
