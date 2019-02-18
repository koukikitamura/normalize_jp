require 'spec_helper'

RSpec.describe Normalizers::HankakuNormalizer do
  describe '#call' do
    subject { Normalizers::HankakuNormalizer.call(value) }

    context 'value is zenkaku' do
      context 'when characters are aplhabet' do
        let(:value) { 'lｏｒｅｍ　ｉｐｓｕｍ' }

        it 'converts to hankaku' do
          expect(subject).to eq 'lorem ipsum'
        end
      end

      context 'when characters are number' do
        let(:value) { "０８０-１１１１-２２２２" }

        it 'convdrts to hankaku' do
          expect(subject).to eq '080-1111-2222'
        end
      end
    end

    context 'value is hankaku' do
      context 'when characters are aplhabet' do
        let(:value) { 'lorem ipsum' }

        it 'converts to hankaku' do
          expect(subject).to eq 'lorem ipsum'
        end
      end

      context 'when characters are number' do
        let(:value) { '080-1111-2222' }

        it 'convdrts to hankaku' do
          expect(subject).to eq '080-1111-2222'
        end
      end
    end
  end
end