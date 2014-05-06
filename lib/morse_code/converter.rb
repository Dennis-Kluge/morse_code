
class MorseCode::Converter

  def initialize(text)
    @text = text
  end

  def clean_text 
    cleaned_text = ""
    @text.split(" ").each do |potential_morse_code|
      latin_character = MorseCode::Constants::ALPHABET[potential_morse_code]
      cleaned_text << [potential_morse_code, " "].join if latin_character
    end
    cleaned_text.strip
  end

  def valid?
    @text.split(" ").each do |potential_morse_code|
      return false unless MorseCode::Constants::ALPHABET[potential_morse_code]    
    end
    true 
  end

  def convert 
    translated_text = ""
    @text.split(" ").each do |potential_morse_code|
      latin_character = MorseCode::Constants::ALPHABET[potential_morse_code]
      translated_text << latin_character if latin_character
    end

    translated_text.strip
  end

end