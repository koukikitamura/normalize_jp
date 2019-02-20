# NormalizerJp

This gem a provites a simple and flexible way to normalize attributes of
Ruby Object. NormalizerJP includes a word JP(stands for Japanese), but this gem
is useful for the other(not Japanese) because you can user yours customized Normalizer.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'normalizer_jp'
```

Or install it yourself as:

    $ gem install normalizer_jp

## Getting Started
Start off by generating normalizer:

```
bin/rails g normalizer Strip
```

this should give you a file in:

```
app/normalizers/strip_normalizer.rb
```

Check out this file for some hints on how you can customize your normlizer. It should look something like this:

```ruby
class StripNormalizer < NormalizerJp::Normalizers::Base
  class << self
    # Normalizer class's responsibility is implimentaion of call method as class method
    def call(attribute_value)
      # Here's normalizer space
    end
  end
end
```

## Usage

### ActiveRecord
you can use normalizers of this gem.
```ruby
class User < ActiveRecord
  include NormalizerJp::Normalizers

  mount_normalizer :name_kana, HiraganaNormalizer
end
```
normlizer works as following:
```ruby
user = User.new
user.name_kana = 'イトウアサコ'
user.name_kana #=> 'いとうあさこ'
```

you can use custom normalizers. custom normalizers's responsibility is implementation of call method as class method. It's super cool.
```ruby
# app/normalizers/upcase_normalizer.rb
class UpcaseNormalizer < NormalizerJp::Normalizers::Base
  class << self
    def call(attribute_value)
      attribute_value.to_s.upcase
    end
  end
end

# app/models/blog.rb
class Blog < ActiveRecord
  mount_normalizer :title, UpcaseNormalizer
end
```

custom normalizer works as following:
```ruby
blog = Blog.new
blog.title = 'awesome title'
blog.title #=> 'AWESOME TITLE'
```
### Plain Old Ruby Object
this gem dose not depends active_record, which mean we use this gem in
Plain Old Ruby Object.

## Versioning
This project uses [Semantic Versioning](https://semver.org/) for release numbering.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/normalizer_jp. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the NormalizerJp project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/normalizer_jp/blob/master/CODE_OF_CONDUCT.md).
