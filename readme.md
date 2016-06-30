# [Yandex market language](https://yandex.ru/support/partnermarket/yml/about-yml.xml) file SAX parser [![Build Status](https://travis-ci.org/zinenko/yandex_ml.svg?branch=master)](https://travis-ci.org/zinenko/yandex_ml)

```.ruby
require "open-uri"

file = YandexML::File.new open("https://yandex.st/market-export/1.0-17/partner/help/YML.xml")

# Get all elements
file.elements.each {|element| puts element.class.name }

# => YandexML::Offer
# => YandexML::Offer
# => YandexML::Offer
# => YandexML::Offer
# => YandexML::Offer
# => YandexML::Offer
# => YandexML::Offer
# => YandexML::Shop

# Get Shop

file.shop

# => #<YandexML::Shop:0x007ffa911d0888 @name="Magazin", @company="Magazin", @url="http://www.magazin.ru/", @phone=nil, @platform=nil, @version=nil, @agency=nil, @email=#<Set: {}>, @currencies=#<Set: {#<YandexML::Currency:0x007ffa9131b3f0 @id="RUR", @rate="1", @plus="0">}>, @store=nil, @pickup=nil, @delivery=nil, @deliveryIncluded=nil, @local_delivery_cost="300", @adult=nil, @cpa=nil, @fee=nil, @delivery_options=#<Set: {}>, @categories=#<YandexML::Tree:0x007ffa938a9220 @collection={"1"=>#<YandexML::Category:0x007ffa938ab7a0 @id="1", @parent_id=nil, @name="Оргтехника">, "10"=>#<YandexML::Category:0x007ffa938b3428 @id="10", @parent_id="1", @name="Принтеры">, "100"=>#<YandexML::Category:0x007ffa938bb358 @id="100", @parent_id="10", @name="Струйные принтеры">, "101"=>#<YandexML::Category:0x007ffa938c3288 @id="101", @parent_id="10", @name="Лазерные принтеры">, "2"=>#<YandexML::Category:0x007ffa938cb1b8 @id="2", @parent_id=nil, @name="Фототехника">, "11"=>#<YandexML::Category:0x007ffa938d3250 @id="11", @parent_id="2", @name="Фотоаппараты">, "12"=>#<YandexML::Category:0x007ffa938db158 @id="12", @parent_id="2", @name="Объективы">, "3"=>#<YandexML::Category:0x007ffa938e3088 @id="3", @parent_id=nil, @name="Книги">, "13"=>#<YandexML::Category:0x007ffa938eb120 @id="13", @parent_id="3", @name="Детективы">, "14"=>#<YandexML::Category:0x007ffa938f3050 @id="14", @parent_id="3", @name="Художественная литература">, "15"=>#<YandexML::Category:0x007ffa938faf80 @id="15", @parent_id="3", @name="Учебная литература">, "16"=>#<YandexML::Category:0x007ffa93902e88 @id="16", @parent_id="3", @name="Детская литература">, "4"=>#<YandexML::Category:0x007ffa9390adb8 @id="4", @parent_id=nil, @name="Музыка и видеофильмы">, "17"=>#<YandexML::Category:0x007ffa93912e50 @id="17", @parent_id="4", @name="Музыка">, "18"=>#<YandexML::Category:0x007ffa9391ad80 @id="18", @parent_id="4", @name="Видеофильмы">, "5"=>#<YandexML::Category:0x007ffa93922cb0 @id="5", @parent_id=nil, @name="Путешествия">, "19"=>#<YandexML::Category:0x007ffa9392ad20 @id="19", @parent_id="5", @name="Туры">, "20"=>#<YandexML::Category:0x007ffa93932c50 @id="20", @parent_id="5", @name="Авиабилеты">, "6"=>#<YandexML::Category:0x007ffa9393ab80 @id="6", @parent_id=nil, @name="Билеты на мероприятия">}>>

# Get all offer

file.offers

# => #<Enumerator::Lazy: #<Enumerator::Lazy: #<Enumerator: #<Enumerator::Generator:0x007ffa92fe8870>:each>>:select>

# Get first offer

file.offers.first
# => #<YandexML::Offer:0x007ffa93af3378 @id="12341", @name=nil, @type="vendor.model", @bid="13", @cbid="20", @available="true", @url="http://magazin.ru/product_page.asp?pid=14344", @price="15000", @oldprice=nil, @currency_id="RUR", @category_id=#<YandexML::CategoryID:0x007ffa93a63e58 @value="101", @type="Own">, @market_category=nil, @picture="http://magazin.ru/img/device14344.jpg", @store=nil, @pickup=nil, @delivery=true, @local_delivery_cost="300", @delivery_options=#<Set: {}>, @vendor="НP", @vendor_code="Q7533A", @description="A4, 64Mb, 600x600 dpi, USB 2.0, 29стр/мин ч/б / 15стр/мин цв, лотки на 100л и 250л, плотность до 175г/м, до 60000 стр/месяц ", @sales_notes=nil, @manufacturer_warranty=true, @country_of_origin="Япония", @ages=#<Set: {}>, @barcodes=#<Set: {}>, @cpa=nil, @params=#<Set: {}>, @type_prefix="Принтер", @model="Color LaserJet 3000", @author=nil, @publisher=nil, @series=nil, @year=nil, @isbn=nil, @part=nil, @volume=nil, @language=nil, @binding=nil, @page_extent=nil, @downloadable=nil, @performed_by=nil, @performance_type=nil, @storage=nil, @format=nil, @recording_length=nil, @artist=nil, @title=nil, @media=nil, @starring=nil, @director=nil, @original_name=nil, @country=nil, @world_region=nil, @region=nil, @days=nil, @data_tour=nil, @hotel_stars=nil, @room=nil, @meal=nil, @included=nil, @transport=nil, @place=nil, @plan=nil, @hall=nil, @hall_part=nil, @date=nil, @is_premiere=nil, @is_kids=nil>
```
