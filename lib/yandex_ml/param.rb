module YandexML
  class Param
    include ActiveModel::Validations
    include Virtus.model

    attribute :name, String
    attribute :value, String
    attribute :unit, String
  end
end