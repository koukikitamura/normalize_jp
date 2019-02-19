require 'spec_helper'

RSpec.describe NormalizerJp::Normalizers::HiraganaNormalizer do
  describe '.call' do
    subject { NormalizerJp::Normalizers::HiraganaNormalizer.call(value) }

    context 'when value is katakana' do
      let(:value) { 'キタムラ' }

      it 'converts to hiragana' do
        expect(subject).to eq 'きたむら'
      end
    end

    context 'when value is hiragana' do
      let(:value) { 'きたむら' }

      it 'keeps hiragana' do
        expect(subject).to eq 'きたむら'
      end
    end
  end
end