require "minitest/autorun"
require "morse_code"

describe MorseCode::Constants do 
  it "includes a hash with the morse code as key and the latin letter as value" do 
    MorseCode::Constants::ALPHABET.must_be_kind_of Hash
    MorseCode::Constants::ALPHABET[".-"].must_equal "A"
  end

  it "includes a hash with the morse code as key and the arabic number as value" do 
    MorseCode::Constants::NUMBERS.must_be_kind_of Hash
    MorseCode::Constants::NUMBERS["-----"].must_equal "0"
  end

  it "includes a hash with merged alphabet and numbers" do 
    MorseCode::Constants::FULL_CODE.must_be_kind_of Hash
    MorseCode::Constants::FULL_CODE[".-"].must_equal "A"
    MorseCode::Constants::NUMBERS["-----"].must_equal "0"
  end

  it "includes a hash with the latin latter as key and the morse code equilavent as value" do 
    MorseCode::Constants::LATIN_ALPHABET.must_be_kind_of Hash
    MorseCode::Constants::LATIN_ALPHABET["A"].must_equal ".-"
  end

  it "includes a hash with the arabic numbers as key and the morse code equilavent as value" do 
    MorseCode::Constants::ARABIC_NUMBERS.must_be_kind_of Hash
    MorseCode::Constants::ARABIC_NUMBERS["0"].must_equal "-----"
  end

  it "includes a hash with merged latin characters and numbers" do 
    MorseCode::Constants::FULL_ALPHA_NUMERIC_CODE.must_be_kind_of Hash
    MorseCode::Constants::FULL_ALPHA_NUMERIC_CODE["A"].must_equal ".-"
    MorseCode::Constants::FULL_ALPHA_NUMERIC_CODE["0"].must_equal "-----"
  end
end