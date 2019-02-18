require "normalizer_jp/version"
require "normalizer_jp/normalize_builder"
require "normalizer_jp/normalizers"
require "nkf"
require "active_support/concern"

begin
  # byebug is only installed on development
  require 'byebug'
rescue LoadError
end

module NormalizerJp
  extend ActiveSupport::Concern

  module ClassMethods
    def mount_normalizer(attribute, normalizer)
      prepend NormalizerBuilder.new(attribute, normalizer)
    end
  end
end

require 'active_record'
ActiveRecord::Base.include(NormalizerJp)
