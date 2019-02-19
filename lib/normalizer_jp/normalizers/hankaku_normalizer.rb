module NormalizerJp
  module Normalizers
    class HankakuNormalizer < Base
      class << self
        def call(atrribute_value)
          convert_alphabet_and_nubmer_to_hankaku(atrribute_value)
        end

        private

        def convert_alphabet_and_nubmer_to_hankaku(value)
          NKF.nkf('-w -W -Z1', value)
        end
      end
    end
  end
end