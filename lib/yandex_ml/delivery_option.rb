# https://yandex.ru/support/partnermarket/elements/delivery-options.xml

module YandexML
  class DeliveryOption
    include ActiveModel::Validations
    include Virtus.model

    attribute :cost
    attribute :days
    attribute :order_before
  end
end
