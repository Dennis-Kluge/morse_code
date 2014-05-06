require 'minitest/autorun'
require "morse_code"

describe MorseCode do 

  before do 
    @morse_code = MorseCode.new
    puts "initialized.."
  end

  describe "default parameters" do 
    it "sets the default parameters for ... " do 
      @morse_code.stop.must_equal "OHAI!"
    end
  end

end