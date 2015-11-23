# [Yandex market language](https://yandex.ru/support/partnermarket/yml/about-yml.xml) file SAX parser

```.ruby
require "open-uri"

file = YandexML::File.new open("https://yandex.st/market-export/1.0-17/partner/help/YML.xml")

file.lazy # => #<Enumerator::Lazy: #<YandexML::File ... >>

file.lazy.each {|element| puts element.class.name }

# => YandexML::Offer
# => YandexML::Offer
# => YandexML::Offer
# => YandexML::Offer
# => YandexML::Offer
# => YandexML::Offer
# => YandexML::Offer
# => YandexML::Shop

puts file.lazy.select{ |element| element.is_a?(YandexML::Offer) }.take(1).map(&:attributes).force

# => {:id=>"12341", :name=>nil, :type=>"Own", :bid=>"13", :cbid=>"20", :available=>"true", :url=>#<URI::HTTP http://magazin.ru/product_page.asp?pid=14344>, :price=>"15000", :oldprice=>nil, :currency_id=>"RUR", :category_id=>101, :market_category=>nil, :picture=>#<URI::HTTP http://magazin.ru/img/device14344.jpg>, :store=>nil, :pickup=>nil, :delivery=>true, :local_delivery_cost=>"300", :delivery_options=>#<Set: {}>, :vendor=>"\xCDP", :vendor_code=>"Q7533A", :description=>"A4, 64Mb, 600x600 dpi, USB 2.0, 29\xF1\xF2\xF0/\xEC\xE8\xED \xF7/\xE1 / 15\xF1\xF2\xF0/\xEC\xE8\xED \xF6\xE2, \xEB\xEE\xF2\xEA\xE8 \xED\xE0 100\xEB \xE8 250\xEB, \xEF\xEB\xEE\xF2\xED\xEE\xF1\xF2\xFC \xE4\xEE 175\xE3/\xEC, \xE4\xEE 60000 \xF1\xF2\xF0/\xEC\xE5\xF1\xFF\xF6 ", :sales_notes=>nil, :manufacturer_warranty=>true, :country_of_origin=>"\xDF\xEF\xEE\xED\xE8\xFF", :ages=>#<Set: {}>, :barcodes=>#<Set: {}>, :cpa=>nil, :params=>#<Set: {}>, :type_prefix=>"\xCF\xF0\xE8\xED\xF2\xE5\xF0", :model=>"Color LaserJet 3000", :author=>nil, :publisher=>nil, :series=>nil, :year=>nil, :isbn=>nil, :volume=>nil, :part=>nil, :language=>nil, :binding=>nil, :page_extent=>nil, :downloadable=>nil, :performed_by=>nil, :performance_type=>nil, :storage=>nil, :format=>nil, :recording_length=>nil, :artist=>nil, :title=>nil, :media=>nil, :starring=>nil, :director=>nil, :original_name=>nil, :country=>nil, :world_region=>nil, :region=>nil, :days=>nil, :data_tour=>nil, :hotel_stars=>nil, :room=>nil, :meal=>nil, :included=>nil, :transport=>nil, :place=>nil, :plan=>nil, :hall=>nil, :hall_part=>nil, :date=>nil, :is_premiere=>nil, :is_kids=>nil}
```

