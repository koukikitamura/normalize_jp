module Noramaliers
  class HiraganaNormalizer
    class << self
      def call(attribute_value)
        convert_katakana_to_hiragana(attribute_value)
      end

      private

      def convert_katakana_to_hiragana(value)
        NKF.nkf('-w -W --hiragana')
      end
    end
  end
end