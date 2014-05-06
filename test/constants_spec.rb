require "minitest/autorun"
require "morse_code"

describe MorseCode::Constants do 
  it "include a hash with the morse code as key and the latin letter as value" do 
    MorseCode::Constants::ALPHABET.must_be_kind_of Hash
    MorseCode::Constants::ALPHABET[".-"].must_equal "A"
  end

  it "include a hash with the latin latter as key and the morse code equilavent as value" do 
    MorseCode::Constants::LATIN_ALPHABET.must_be_kind_of Hash
    MorseCode::Constants::LATIN_ALPHABET["A"].must_equal ".-"
  end
end