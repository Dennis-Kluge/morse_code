# MorseCode

MorseCode is a small Library which enables the conversion of morse codes back and forth. As a GeoCaching advocat it is sometimes pretty usefull to add morse code abilities Ruby and your IRB. Only latin letters and arabic numbers are supported. It might change in the future.

## Dependencies
    Ruby >= 2.1
As this Library is using refinements please make sure that you're using a current Ruby version.

## Installation

Add this line to your application's Gemfile:

    gem 'morse_code'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install morse_code

## Usage

The usage is pretty easy. Please make sure that your String is encoded with . (dit) and - (dah).

### Morse Code to String
    morse_code = MorseCode::Converter.new("..-. --- --- -... .- .-.")
    morse_code.convert

### Check if String is a valid Morse Code
    MorseCode::Converter.new("foobar").valid?

### Filter only Morse Codes from a String
    MorseCode::Converter.new("$..-. --- --- -... .- .-.$").clean_text

### String to Morse Code
    using MorseCode::Refinements
    "foobar".to_morse_code

## License
    MIT

## Trouble?
Just write an issue!

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
