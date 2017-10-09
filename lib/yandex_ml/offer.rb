module YandexML
  class Offer < YandexML::Element
    TYPES = %w[vendor.model book audiobook artist.title tour ticket event-ticket]

    attribute :id, String
    attribute :name, String
    attribute :type, String
    attribute :bid, String
    attribute :cbid, String
    attribute :available, String
    attribute :url, String
    attribute :price, Float
    attribute :oldprice, String
    attribute :currency_id, String
    attribute :category_id, CategoryID
    attribute :market_category, String
    attribute :picture, String
    attribute :store, Boolean # 'true', 'false'
    attribute :pickup, Boolean # 'true', 'false'
    attribute :delivery, Boolean # 'true', 'false'
    attribute :local_delivery_cost, String
    attribute :delivery_options, Set[DeliveryOption]# delivery-options
    attribute :vendor, String
    attribute :vendor_code, String
    attribute :description, String # 175
    attribute :sales_notes, String # 50
    attribute :manufacturer_warranty, Boolean
    attribute :country_of_origin, String # https://yandex.st/market-export/97.0516af5f/partner/help/Countries.pdf
    attribute :ages, Set[Age]
    attribute :barcodes, Set[String]
    attribute :cpa, String
    attribute :params, Set[Param]
    attribute :type_prefix, String
    attribute :model, String
    attribute :author, String
    attribute :publisher, String
    attribute :series, String
    attribute :year, String
    attribute :isbn, String
    attribute :part, String
    attribute :volume, String
    attribute :language, String
    attribute :binding, String
    attribute :page_extent, String
    attribute :downloadable, String
    attribute :performed_by, String
    attribute :performance_type, String
    attribute :storage, String
    attribute :format, String
    attribute :recording_length, String
    attribute :artist, String
    attribute :title, String
    attribute :media, String
    attribute :starring, String
    attribute :director, String
    attribute :original_name, String
    attribute :country, String
    attribute :world_region, String
    attribute :region, String
    attribute :days, String
    attribute :data_tour, String
    attribute :hotel_stars, String
    attribute :room, String
    attribute :meal, String
    attribute :included, String
    attribute :transport, String
    attribute :place, String
    attribute :plan, String
    attribute :hall, String
    attribute :hall_part, String
    attribute :date, String
    attribute :is_premiere, String
    attribute :is_kids, String

    validates :id, presence: true
  end
end
