module NormalizerJp
  module Normalizers
    class Base
      class << self
        def call
          raise NotImplementedError
        end
      end
    end
  end
end

require "normalizer_jp/normalizers/hankaku_normalizer"
require "normalizer_jp/normalizers/katakana_normalizer"
require "normalizer_jp/normalizers/hiragana_normalizer"