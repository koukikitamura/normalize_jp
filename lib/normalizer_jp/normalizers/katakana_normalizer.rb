module NormalizerJp
  module Normalizers
    class KatakanaNormalizer < Base
      class << self
        def call(attribute_value)
          convert_hiragana_to_katakana(attribute_value)
        end

        private

        def convert_hiragana_to_katakana(value)
          NKF.nkf('-w -W --katakana', value)
        end
      end
    end
  end
end