class NormalizerGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('../templates', __FILE__)

  def create_normalizer_file
    template 'normalizer.rb', File.join('app/normalizers',
                                        class_path,
                                        "#{file_name}_normalizer.rb")
  end
end