# https://yandex.ru/support/partnermarket/elements/delivery-options.xml

module YandexML
  class DeliveryOption < YandexML::Element
    attribute :cost
    attribute :days
    attribute :order_before
  end
end
