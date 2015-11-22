module YandexML
  class Category
    include ActiveModel::Validations
    include Virtus.model

    attribute :id, String
    attribute :parentId, String
    attribute :name, String

    validates :id, :name, presence: true

    alias_method :category, :name
    alias_method :category=, :name=
  end
end