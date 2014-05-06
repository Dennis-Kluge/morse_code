
class MorseCode::Converter

  def initialize(text)
    @text = text
  end

  def clean_text 
    cleaned_text = ""
    @text.split(" ").each do |potential_morse_code|
      latin_character = MorseCode::Constants::FULL_CODE[potential_morse_code]
      cleaned_text << [potential_morse_code, " "].join if latin_character
    end
    cleaned_text.strip
  end

  def valid?
    @text.split(" ").each do |potential_morse_code|
      return false unless MorseCode::Constants::FULL_CODE[potential_morse_code]    
    end
    true 
  end

  def convert 
    translated_text = ""

    if @text.lines.count > 1 
      @text.each_line do |line|
        translated_text << convert_line(line)  
        translated_text << "\n"
      end
    else 
      translated_text << convert_line(@text)
    end    
    translated_text
  end

  def convert_line(line)
    converted_text = ""
    line.strip.split(" ").each do |potential_morse_code|
      latin_character = MorseCode::Constants::FULL_CODE[potential_morse_code]
      converted_text << latin_character if latin_character
    end 
    converted_text
  end


end