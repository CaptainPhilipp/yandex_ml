module YandexML
  class Shop < YandexML::Element
    validates :name, :company, :url, presence: true

    attribute :name, String
    attribute :company, String
    attribute :url, String
    attribute :phone, String
    attribute :platform, String
    attribute :phone, String
    attribute :version, String
    attribute :agency, String
    attribute :email, Set[String]
    attribute :currencies, Set[YandexML::Currency]
    attribute :categories, Set[YandexML::Category]
    attribute :store, String
    attribute :pickup, String
    attribute :delivery, String
    attribute :deliveryIncluded, String
    attribute :local_delivery_cost, String
    attribute :adult, String
    attribute :cpa, String
    attribute :fee, String
  end
end