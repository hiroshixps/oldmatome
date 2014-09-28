require 'rubygems'
require "#{Rails.root}/app/models/product"
require 'bundler/setup'
Bundler.require


Product.all.each do |product| 
  if product.img_url == ""
    doc = Nokogiri::HTML(open(product.kakaku_url)) 
    product.img_url = doc.xpath('//div[@id = "imgBox"]/img/@src').inner_text
    product.save
  end  
end


