
require "open-uri"
require "nokogiri"
  enc_key = URI.escape("ENVY 17-j100/CT Leap Motion SE カスタムモデル".gsub(/\[|\]/, " "))
    url = "http://www.ebay.com/sch/i.html?&_nkw=#{enc_key}"
    doc = Nokogiri::HTML(open(url), nil, "UTF-8" )
    if @ebay_detail = doc.xpath('//h3[@class="lvtitle"]/a/@href').first
      @ebay_price = doc.xpath('//span[@class="g-b"]').first.text.gsub(/[^0-9]/,"").to_i
      @ebay_detail = doc.xpath('//h3[@class="lvtitle"]/a/@href').first.text
      p @ebay_price
      p @ebay_detail
    end
