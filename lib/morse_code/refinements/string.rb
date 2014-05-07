module MorseCode::Refinements
  refine String do
    def to_morse_code
      converted_text = ""
      self.chars.each do |character|
        converted_character = MorseCode::Constants::FULL_ALPHA_NUMERIC_CODE[character.capitalize]
        converted_text << [converted_character, " "].join if converted_character
      end
      converted_text.strip
    end
  end
end