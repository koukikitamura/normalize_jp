class <%= class_name %>Normalizer < NormalizerJp::Normalizers::Base
  class << self
    # Normalizer class's responsibility is implimentaion of call method as class method
    def call(attribute_value)
      # Here's normalizer space
    end
  end
end