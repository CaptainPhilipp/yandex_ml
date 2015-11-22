module YandexML
  class Currency
    include ActiveModel::Validations
    include Virtus.model

    IDS = %w[RUR RUB USD BYR KZT EUR UAH]

    attribute :id
    attribute :rate
    attribute :plus

    validates :id, presence: true, inclusion: IDS
  end
end
