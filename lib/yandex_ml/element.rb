module YandexML
  class Element
    include ActiveModel::Validations

    include Virtus.model do |model|
      model.coerce = true
      model.coercer.config.string.boolean_map = {
        'true' => true,
        't' => true,
        '1' => true,
        'false' => false,
        'f' => false,
        '0' => false,
      }
    end
  end
end
