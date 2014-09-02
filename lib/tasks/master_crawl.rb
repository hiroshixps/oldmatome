require 'rubygems'
require "#{Rails.root}/app/models/product"
require 'bundler/setup'
Bundler.require

options = {
  :user_agent => "AnemoneCrawler/0.0.1",
  :delay => 0,
  :depth_limit => 1,
}
@url ='http://kakaku.com/'
Anemone.crawl(@url, options) do |anemone|

  anemone.focus_crawl do |page|
    page.links.keep_if { |link|
      link.to_s.match(/\/pc\/|\/kaden\/|\/camera\/|\/keitai\//)
    }
  end

  anemone.on_every_page do |page|
    if page.doc && page.url.to_s.match(/\/pc\/|\/kaden\/|\/camera\/|\/keitai\//)

      p page.url.to_s
      middle =  page.doc.xpath('//div[@class = "menuBox01"]/h2').inner_text
        f = File.open('master.txt', 'a+') 
        f.puts middle
        f.close

      page.doc.xpath('//div[@class = "menuBox01"]').each do |sm|
        p sm.inner_text

        f = File.open('master.txt', 'a+') 
        f.puts sm.inner_text
        f.close
      end
    end
  end

end

