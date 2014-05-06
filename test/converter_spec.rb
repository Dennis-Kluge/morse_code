require "minitest/autorun"
require "morse_code"

describe MorseCode::Converter do 
  it "cleans a string from invalid characters" do 
    unclean_morse_code = MorseCode::Converter.new(".- foobar $ # * % ....  --.    ")
    unclean_morse_code.clean_text.must_equal ".- .... --."
  end

  it "checks if the given morse code is invalid" do 
    invalid_morse_code = MorseCode::Converter.new("foobar")
    invalid_morse_code.valid?.must_equal false 
  end

  it "checks if the given morse code is valid" do 
    invalid_morse_code = MorseCode::Converter.new(".- ---")
    invalid_morse_code.valid?.must_equal true 
  end

  it "converts a valid morse code to a readable text" do 
    morse_code = MorseCode::Converter.new(".... . .-.. .-.. ---  .-- --- .-. .-.. -..")
    morse_code.convert.must_equal "HELLOWORLD"
  end

  it "converts a valid multi line morse code to a readable text" do 
    morse_code = MorseCode::Converter.new(".- .- .- \n ----- ----- --... \n ----- ----- --...")
    morse_code.convert.must_equal "AAA\n007\n007\n"
  end

  it "does not converts a valid morse code to a readable text" do 
    morse_code = MorseCode::Converter.new("foobar")
    morse_code.convert.must_equal ""
  end
end
