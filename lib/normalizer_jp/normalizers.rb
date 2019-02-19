module NormalizerJp
  module Normalizers
    class Base
      class << self
        def call(attribute_value)
          raise NotImplementedError,
                'Normalizer must implement call methods as class method'
        end
      end
    end
  end
end

require "normalizer_jp/normalizers/hankaku_normalizer"
require "normalizer_jp/normalizers/katakana_normalizer"
require "normalizer_jp/normalizers/hiragana_normalizer"