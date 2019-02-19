class NormalizerBuilder < Module
  def initialize(attribute, normalizer)
    define_method "#{attribute}=" do |value|
      normalized_value = normalizer.call(value)
      super(normalized_value)
    end
  end
end