module YandexML
  class Parser < ::Ox::Sax
    include AASM

    aasm do
      state :root, initial: true
      state :yml_catalog
      state :shop
      state :name
      state :company
      state :url
      state :currencies
      state :currency
      state :categories
      state :category
      state :local_delivery_cost
      state :offers
      state :offer
      state :price
      state :currency_id
      state :category_id
      state :picture
      state :delivery
      state :type_prefix
      state :vendor
      state :vendor_code
      state :model
      state :description
      state :manufacturer_warranty
      state :country_of_origin
      state :author
      state :publisher
      state :series
      state :year
      state :isbn
      state :volume
      state :part
      state :language
      state :binding
      state :page_extent
      state :downloadable
      state :performed_by
      state :performance_type
      state :storage
      state :format
      state :recording_length
      state :artist
      state :title
      state :media
      state :starring
      state :director
      state :original_name
      state :country
      state :world_region
      state :region
      state :days
      state :data_tour
      state :hotel_stars
      state :room
      state :meal
      state :included
      state :transport
      state :place
      state :hall
      state :hall_part
      state :date
      state :is_premiere
      state :is_kids

      event :start_yml_catalog do
        transitions from: :root, to: :yml_catalog
      end

      event :end_yml_catalog do
        transitions from: :yml_catalog, to: :root
      end

      event :start_shop do
        transitions from: :yml_catalog, to: :shop
      end

      event :end_shop do
        transitions from: :shop, to: :yml_catalog
      end

      event :start_name do
        transitions from: :shop, to: :name
        transitions from: :offer, to: :name
      end

      event :end_name do
        transitions from: :name, to: :shop,  guard: :in_shop?
        transitions from: :name, to: :offer, guard: :in_offer?
      end

      event :start_company do
        transitions from: :shop, to: :company
      end

      event :end_company do
        transitions from: :company, to: :shop
      end

      event :start_url do
        transitions from: :shop,  to: :url
        transitions from: :offer, to: :url
      end

      event :end_url do
        transitions from: :url, to: :offer, guard: :in_offer?
        transitions from: :url, to: :shop,  guard: :in_shop?
      end

      event :start_currencies do
        transitions from: :shop, to: :currencies
      end

      event :end_currencies do
        transitions from: :currencies, to: :shop
      end

      event :start_currency do
        transitions from: :currencies, to: :currency
      end

      event :end_currency do
        transitions from: :currency, to: :currencies
      end

      event :start_categories do
        transitions from: :shop, to: :categories
      end

      event :end_categories do
        transitions from: :categories, to: :shop
      end

      event :start_category do
        transitions from: :categories, to: :category
      end

      event :end_category do
        transitions from: :category, to: :categories
      end

      event :start_local_delivery_cost do
        transitions from: :shop,  to: :local_delivery_cost
        transitions from: :offer, to: :local_delivery_cost
      end

      event :end_local_delivery_cost do
        transitions from: :local_delivery_cost, to: :shop,  guard: :in_shop?
        transitions from: :local_delivery_cost, to: :offer, guard: :in_offer?
      end

      event :start_offers do
        transitions from: :shop, to: :offers
      end

      event :end_offers do
        transitions from: :offers, to: :shop
      end

      event :start_offer do
        transitions from: :offers, to: :offer
      end

      event :end_offer do
        transitions from: :offer, to: :offers
      end

      event :start_price do
        transitions from: :offer, to: :price
      end

      event :end_price do
        transitions from: :price, to: :offer
      end

      event :start_currency_id do
        transitions from: :offer, to: :currency_id
      end

      event :end_currency_id do
        transitions from: :currency_id, to: :offer
      end

      event :start_category_id do
        transitions from: :offer, to: :category_id
      end

      event :end_category_id do
        transitions from: :category_id, to: :offer
      end

      event :start_picture do
        transitions from: :offer, to: :picture
      end

      event :end_picture do
        transitions from: :picture, to: :offer
      end

      event :start_delivery do
        transitions from: :offer, to: :delivery
      end

      event :end_delivery do
        transitions from: :delivery, to: :offer
      end

      event :start_type_prefix do
        transitions from: :offer, to: :type_prefix
      end

      event :end_type_prefix do
        transitions from: :type_prefix, to: :offer
      end

      event :start_vendor do
        transitions from: :offer, to: :vendor
      end

      event :end_vendor do
        transitions from: :vendor, to: :offer
      end

      event :start_vendor_code do
        transitions from: :offer, to: :vendor_code
      end

      event :end_vendor_code do
        transitions from: :vendor_code, to: :offer
      end

      event :start_model do
        transitions from: :offer, to: :model
      end

      event :end_model do
        transitions from: :model, to: :offer
      end

      event :start_description do
        transitions from: :offer, to: :description
      end

      event :end_description do
        transitions from: :description, to: :offer
      end

      event :start_manufacturer_warranty do
        transitions from: :offer, to: :manufacturer_warranty
      end

      event :end_manufacturer_warranty do
        transitions from: :manufacturer_warranty, to: :offer
      end

      event :start_country_of_origin do
        transitions from: :offer, to: :country_of_origin
      end

      event :end_country_of_origin do
        transitions from: :country_of_origin, to: :offer
      end

      event :start_author do
        transitions from: :offer, to: :author
      end

      event :end_author do
        transitions from: :author, to: :offer
      end

      event :start_publisher do
        transitions from: :offer, to: :publisher
      end

      event :end_publisher do
        transitions from: :publisher, to: :offer
      end

      event :start_series do
        transitions from: :offer, to: :series
      end

      event :end_series do
        transitions from: :series, to: :offer
      end

      event :start_year do
        transitions from: :offer, to: :year
      end

      event :end_year do
        transitions from: :year, to: :offer
      end

      event :start_isbn do
        transitions from: :offer, to: :isbn
      end

      event :end_isbn do
        transitions from: :isbn, to: :offer
      end

      event :start_volume do
        transitions from: :offer, to: :volume
      end

      event :end_volume do
        transitions from: :volume, to: :offer
      end

      event :start_part do
        transitions from: :offer, to: :part
      end

      event :end_part do
        transitions from: :part, to: :offer
      end

      event :start_language do
        transitions from: :offer, to: :language
      end

      event :end_language do
        transitions from: :language, to: :offer
      end

      event :start_binding do
        transitions from: :offer, to: :binding
      end

      event :end_binding do
        transitions from: :binding, to: :offer
      end

      event :start_page_extent do
        transitions from: :offer, to: :page_extent
      end

      event :end_page_extent do
        transitions from: :page_extent, to: :offer
      end

      event :start_downloadable do
        transitions from: :offer, to: :downloadable
      end

      event :end_downloadable do
        transitions from: :downloadable, to: :offer
      end

      event :start_performed_by do
        transitions from: :offer, to: :performed_by
      end

      event :end_performed_by do
        transitions from: :performed_by, to: :offer
      end

      event :start_performance_type do
        transitions from: :offer, to: :performance_type
      end

      event :end_performance_type do
        transitions from: :performance_type, to: :offer
      end

      event :start_storage do
        transitions from: :offer, to: :storage
      end

      event :end_storage do
        transitions from: :storage, to: :offer
      end

      event :start_format do
        transitions from: :offer, to: :format
      end

      event :end_format do
        transitions from: :format, to: :offer
      end

      event :start_recording_length do
        transitions from: :offer, to: :recording_length
      end

      event :end_recording_length do
        transitions from: :recording_length, to: :offer
      end

      event :start_artist do
        transitions from: :offer, to: :artist
      end

      event :end_artist do
        transitions from: :artist, to: :offer
      end

      event :start_title do
        transitions from: :offer, to: :title
      end

      event :end_title do
        transitions from: :title, to: :offer
      end

      event :start_media do
        transitions from: :offer, to: :media
      end

      event :end_media do
        transitions from: :media, to: :offer
      end

      event :start_starring do
        transitions from: :offer, to: :starring
      end

      event :end_starring do
        transitions from: :starring, to: :offer
      end

      event :start_director do
        transitions from: :offer, to: :director
      end

      event :end_director do
        transitions from: :director, to: :offer
      end

      event :start_original_name do
        transitions from: :offer, to: :original_name
      end

      event :end_original_name do
        transitions from: :original_name, to: :offer
      end

      event :start_country do
        transitions from: :offer, to: :country
      end

      event :end_country do
        transitions from: :country, to: :offer
      end

      event :start_world_region do
        transitions from: :offer, to: :world_region
      end

      event :end_world_region do
        transitions from: :world_region, to: :offer
      end

      event :start_region do
        transitions from: :offer, to: :region
      end

      event :end_region do
        transitions from: :region, to: :offer
      end

      event :start_days do
        transitions from: :offer, to: :days
      end

      event :end_days do
        transitions from: :days, to: :offer
      end

      event :start_data_tour do
        transitions from: :offer, to: :data_tour
      end

      event :end_data_tour do
        transitions from: :data_tour, to: :offer
      end

      event :start_hotel_stars do
        transitions from: :offer, to: :hotel_stars
      end

      event :end_hotel_stars do
        transitions from: :hotel_stars, to: :offer
      end

      event :start_room do
        transitions from: :offer, to: :room
      end

      event :end_room do
        transitions from: :room, to: :offer
      end

      event :start_meal do
        transitions from: :offer, to: :meal
      end

      event :end_meal do
        transitions from: :meal, to: :offer
      end

      event :start_included do
        transitions from: :offer, to: :included
      end

      event :end_included do
        transitions from: :included, to: :offer
      end

      event :start_transport do
        transitions from: :offer, to: :transport
      end

      event :end_transport do
        transitions from: :transport, to: :offer
      end

      event :start_place do
        transitions from: :offer, to: :place
      end

      event :end_place do
        transitions from: :place, to: :offer
      end

      event :start_hall do
        transitions from: :offer, to: :hall
      end

      event :end_hall do
        transitions from: :hall, to: :offer
      end

      event :start_hall_part do
        transitions from: :offer, to: :hall_part
      end

      event :end_hall_part do
        transitions from: :hall_part, to: :offer
      end

      event :start_date do
        transitions from: :offer, to: :date
      end

      event :end_date do
        transitions from: :date, to: :offer
      end

      event :start_is_premiere do
        transitions from: :offer, to: :is_premiere
      end

      event :end_is_premiere do
        transitions from: :is_premiere, to: :offer
      end

      event :start_is_kids do
        transitions from: :offer, to: :is_kids
      end

      event :end_is_kids do
        transitions from: :is_kids, to: :offer
      end

      # after_all_transitions  do
      #   puts "#{ aasm.from_state } -> #{ aasm.to_state } => #{ aasm.current_event }; #{ stack.inspect }"
      # end
    end

    aasm.states.map(&:name).each do |state_name|
      define_method "in_#{ state_name }?" do
        path[-2] == state_name
      end
    end

    attr_reader :states

    def initialize(logger, &consumer)
      @consumer = consumer
      @logger = logger
    end

    def start_element(name)
      debug "> #{ name }"

      case name
      when :shop
        self.current_element = YandexML::Shop.new
      when :currencies
        # nothing
      when :currency
        self.current_element = YandexML::Currency.new
      when :categories
        # nothing
      when :category
        self.current_element = YandexML::Category.new
      when :offers
        # nothing
      when :offer
        self.current_element = YandexML::Offer.new
      end

      path.push name
      send underscore("start_#{ name }")
    end

    def end_element(name)
      debug "< #{ name }"

      case name
      when :shop
        @consumer.call self.current_element
      when :currencies
        # nothing
      when :currency
        self.parent_element.currencies << self.current_element
        stack.pop
      when :categories
        # nothing
      when :category
        self.parent_element.categories << self.current_element
        stack.pop
      when :offers
        # nothing
      when :offer
        @consumer.call self.current_element
        stack.pop
      end

      send underscore("end_#{ name }")
      path.pop
    end

    def attr(name, value)
      debug " #{ name } : #{ value }"
      self.current_element[name] = value if current_element
    end

    def text(value)
      debug " text : #{ value }"
      self.current_element[underscore(path.last)] = value
    end

    alias_method :cdata, :text

    def stack
      @stack ||= []
    end

    def path
      @path ||= []
    end

    def current_element
      stack[-1]
    end

    def parent_element
      stack[-2]
    end

    def current_element=(value)
      stack.push value
    end

    def debug(message)
      @logger.debug (" " * path.size) << message
    end

    def underscore(string)
      string.to_s.gsub(/::/, '/').gsub(/([A-Z]+)([A-Z][a-z])/,'\1_\2').gsub(/([a-z\d])([A-Z])/,'\1_\2').tr("-", "_").downcase
    end
  end
end
