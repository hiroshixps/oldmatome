require 'rubygems'
require "#{Rails.root}/app/models/product"
require 'bundler/setup'
Bundler.require

for i in 600000..700000 do

  @url ="http://kakaku.com/item/K#{sprintf("%010d",i).to_s}/spec/"
  enc_key = URI.escape(@url)
  p @url
  begin
    doc = Nokogiri::HTML(open(enc_key))  do
      #     p doc.xpath('//h2').inner_text
      #     p doc.xpath('//li[@class = "makerLabel"]/a').inner_text
      #     p doc.xpath('//li[@class = "seriesLabel"]/a').inner_text
      #     p doc.xpath('//div[@class = "path btmPath"]/*[2]').inner_text
      #     p doc.xpath('//div[@class = "path btmPath"]/*[3]').inner_text
      #     p doc.xpath('//div[@id = "imgBox"]/a/img/@src').inner_text
      #     p doc.xpath('//span[@id = "minPrice"]/a').inner_text.gsub(/[^0-9]/,"").to_i
      #        p page.doc.xpath('//div[@id="mainLeft"]/table[@class = "tblBorderGray mTop15"]/tr').text
      if doc
        @product = Product.new(
          product_name: doc.xpath('//h2').inner_text,
          brand: doc.xpath('//li[@class = "makerLabel"]/a').inner_text,
          series: doc.xpath('//li[@class = "seriesLabel"]/a').inner_text,
          new_price: doc.xpath('//span[@id = "minPrice"]/a').inner_text.gsub(/[^0-9]/,"").to_i,
          img_url: doc.xpath('//div[@id = "imgBox"]/a/img/@src').inner_text,
          kakaku_url: "http://kakaku.com/item/K#{sprintf("%010d",i-1).to_s}/spec/",
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
  rescue OpenURI::HTTPError => ex

  end
end


