require "minitest/autorun"
require "morse_code"
using MorseCode::Refinements

describe String do 
  # eval("using MorseCode::Refinements")

  it "converts a string to its morse code equilavent" do 
    "hello world".to_morse_code.must_equal ".... . .-.. .-.. --- .-- --- .-. .-.. -.."
  end

  it "eliminates non convertable characters" do 
    "´´hello world§§".to_morse_code.must_equal ".... . .-.. .-.. --- .-- --- .-. .-.. -.."
  end
end
