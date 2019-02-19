class UpcaseNormalizer < NormalizerJp::Normalizers::Base
  def self.call(attribute_value)
    attribute_value.upcase
  end
end