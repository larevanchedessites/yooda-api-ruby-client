# A Ruby wrapper for the Yooda API
A simple and lightweight ruby module for working with Yooda via the Yooda API. Learn about the Yooda API at https://api.yooda.com/doc.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yooda-client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yooda-client

## Usage

```ruby
client = Yooda::Client.new(apikey: "ok")

client.credits
client.histories
client.histories(request_date: Date.today.strftime("%Y-%m-%d"))
client.histories(return_max: 2, return_initial_position: 2)

client.domain_informations("www.la-revanche-des-sites.fr")
client.domain_market_kpi(1484887)
client.keywords_market_by_domain(1484887, return_max: 2, return_initial_position: 2)

client.keyword_informations("SEO")
client.keyword_market_kpi(124)
client.keywords_market_by_keyword(124, return_max: 2, return_initial_position: 2)
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/larevanchedessites/yooda-api-ruby-client. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## History

View the [changelog](https://github.com/larevanchedessites/yooda-api-ruby-client/blob/master/CHANGELOG.md). This gem follows [Semantic Versioning](http://semver.org/).

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
See [LICENSE](https://github.com/larevanchedessites/yooda-api-ruby-client/blob/master/LICENSE.txt) for details.

## Code of Conduct

Everyone interacting in the project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/yooda-client/blob/master/CODE_OF_CONDUCT.md).
