require 'rubygems'
require "#{Rails.root}/app/models/product"
require 'bundler/setup'
Bundler.require

      # 中カテゴリは取得できないので、マスタからさがして代入
# pc.camera, keitaiカテゴリのみなので注意
Product.all.each do |product| 
  if product.s_category
  product.m_category = SCategory.find_by_s_category(product.s_category).m_category.m_category 
  product.l_category = SCategory.find_by_s_category(product.s_category).l_category.l_category 
  product.save
  end
end   
