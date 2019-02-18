class NormalizerBuilder < Module
  def initialize(attribute, uploader)
    define_method "#{attribute}=" do |value|
      normalized_value = uploader.call(value)
      super(normalized_value)
    end
  end
end