require 'spec_helper'

RSpec.describe NormalizerJp::Normalizers::Base do
  context 'when subclass dose not implement call method' do
    Downcase = Class.new(NormalizerJp::Normalizers::Base)

    it 'should raise Error' do
      expect { Downcase.call('someting') }.to raise_error(NotImplementedError)
    end
  end
end