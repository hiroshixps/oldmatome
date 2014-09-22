
      # 中カテゴリは取得できないので、マスタからさがして代入
Product.all.each do |product| 
  product.m_category = SCategory.find_by_s_category(@product.s_category).m_category.m_category 
  product.l_category = SCategory.find_by_s_category(@product.s_category).l_category.l_category 
  product.save
end   
