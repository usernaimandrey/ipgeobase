[![test and linter](https://github.com/usernaimandrey/ipgeobase/actions/workflows/ruby.yml/badge.svg)](https://github.com/usernaimandrey/ipgeobase/actions/workflows/ruby.yml)

[![Maintainability](https://api.codeclimate.com/v1/badges/2ad4326041da37ea3825/maintainability)](https://codeclimate.com/github/usernaimandrey/ipgeobase/maintainability)

# Ipgeobase

*Ipgeobase* возвращает метаданные об IP. Гем содержит метод `lookup('8.8.8.8')`, который принимает IP-адрес и возвращает объект метаданных.

В метаданных содержатся следующие поля:

* `city` - город
* `country` - страна
* `countryCode` - код страны
* `lat` - ширина
* `lon` - долгота

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add ipgeobase

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install ipgeobase

## Usage

```
require "ipgeobase"

ip = '8.8.8.8'

ip_meta = Ipgeobase.lookup(ip)

ip_meta = Ipgeobase.lookup('8.8.8.8')
ip_meta.city # Ashburn
ip_meta.country # United States
ip_meta.countryCode # US
ip_meta.lat # 39.03
ip_meta.lon # -77.5
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/usernaimandrey/ipgeobase.
