require "normalizer_jp/version"
require "active_support/concern"

begin
  # byebug is only installed on development
  require 'byebug'
rescue LoadError
end

module NormalizerJp
  extend ActiveSupport::Concern
end

require 'active_record'
ActiveRecord::Base.include(NormalizerJp)