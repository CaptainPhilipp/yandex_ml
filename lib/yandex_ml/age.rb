module YandexML
  class Age < YandexML::Element
    attribute :unit, String
    attribute :value, String

    validates :id, presence: true
  end
end