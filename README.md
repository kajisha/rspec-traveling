# RSpec::Traveling

No more write `around { travel_to '2019-01-01' }` every examples, simply add travel_to at metadata.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rspec-traveling'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rspec-traveling

## Usage

In rails_helper.rb
```ruby
require 'rspec/traveling'
```

In your test cases:
```
RSpec.describe AwesomeModel do
  describe 'A time-dependent spec', travel_to: '2019-01-01' do
    # Date.today => '2019-01-01'
  end
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/kajisha/rspec-traveling. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RSpec::Traveling project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/rspec-traveling/blob/master/CODE_OF_CONDUCT.md).
