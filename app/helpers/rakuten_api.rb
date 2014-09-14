require 'rakuten'
client = Rakuten::Client.new('1094593437835155159', '131468e2.e5e051bb.131468e3.380b0f28')
result = client.item_search('2010-09-15', {:keyword => 'ASUS MeMO Pad 7 ME176-BK16 [ブラック]', :sort => 'standard'})
@rakuten_price =  result['Items']['Item'][0]['itemPrice']
@rakuten_url = result['Items']['Item'][0]['itemUrl']
