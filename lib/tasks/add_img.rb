require 'rubygems'
require "#{Rails.root}/app/models/product"
require 'bundler/setup'
Bundler.require


Product.all.each do |product| 
  begin
  if product.img_url == ""
    doc = Nokogiri::HTML(open(product.kakaku_url)) 
    product.img_url = doc.xpath('//div[@id = "imgBox"]/img/@src').inner_text == "http://img1.kakaku.k-img.com/images/productimage/l/nowprinting.gif" ? "" : doc.xpath('//div[@id = "imgBox"]/img/@src').inner_text
    product.save
  end  
  rescue
  end
end


