# SerialcodeGenerator [![Build Status](https://travis-ci.org/hilotter/serialcode_generator.png?branch=master)](https://travis-ci.org/hilotter/serialcode_generator)

Generate serialcode, excluding 0, O, o, 1, l, I.

## Installation

Add this line to your application's Gemfile:

    gem 'serialcode_generator'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install serialcode_generator

## Usage

    # default 6 digit
    SerialcodeGenerator.generate
    # => "eVPwZR"

    # set custom digit
    SerialcodeGenerator.generate(10)
    # => "AQNzBZXutg"
    
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
