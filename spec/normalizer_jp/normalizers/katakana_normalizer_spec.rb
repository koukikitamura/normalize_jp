require 'spec_helper'

RSpec.describe NormalizerJp::Normalizers::KatakanaNormalizer do
  describe '.call' do
    subject { NormalizerJp::Normalizers::KatakanaNormalizer.call(value) }

    context 'when value is hiragana' do
      let(:value) { 'きたむら' }

      it 'converts to katakana' do
        expect(subject).to eq 'キタムラ'
      end
    end

    context 'when value is katakana' do
      let(:value) { 'キタムラ' }

      it 'keeps katakan' do
        expect(subject).to eq 'キタムラ'
      end
    end
  end
end