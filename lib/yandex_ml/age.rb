module YandexML
  class Age
    include ActiveModel::Validations
    include Virtus.model

    attribute :unit, String
    attribute :value, String

    validates :id, presence: true
  end
end