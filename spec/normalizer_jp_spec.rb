RSpec.describe NormalizerJp do
  it 'is included ActiveRecord::Base' do
    expect(ActiveRecord::Base).to include(NormalizerJp)
  end


  context 'ActiveRecord' do
    class Blog < ActiveRecord::Base
      mount_normalizer :title, UpcaseNormalizer
    end
    let(:blog) { Blog.new }

    it 'retruns nomralized value' do
      blog.title = 'awesome title'
      expect(blog.title).to eq 'AWESOME TITLE'
    end
  end
end