module YandexML
  class Category < YandexML::Element
    attribute :id, String
    attribute :parent_id, String
    attribute :name, String

    validates :id, :name, presence: true

    alias_method :category, :name
    alias_method :category=, :name=

    alias_method :parentId, :parent_id
    alias_method :parentId=, :parent_id=
  end
end