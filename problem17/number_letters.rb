class NumberLetters < Struct.new(:range)
  def count_letters
    range.reduce(0) do |memo, number|
      memo + Translator.new(number).to_s.gsub(/\s+/, '').length
    end
  end

  class Translator < Struct.new(:number)
    ONES_TRANSLATIONS = ['', 'one', 'two', 'three', 'four', 'five', 'six',
                         'seven', 'eight', 'nine', 'ten', 'eleven', 'twelve',
                          'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen',
                          'eighteen', 'nineteen']

    TENS_TRANSLATIONS = ['', '', 'twenty', 'thirty', 'forty', 'fifty', 'sixty',
                         'seventy', 'eighty', 'ninety']

    def to_s
      return 'one thousand' if number == 1000
      return 'zero' if number == 0
      words = ''
      hundreds = number / 100
      tens_total = number % 100
      tens = tens_total / 10
      ones = number % 10

      words << "#{ONES_TRANSLATIONS[hundreds]} hundred" if hundreds > 0
      words << ' and' if hundreds > 0 && (tens > 0 || ones > 0)
      words << " #{TENS_TRANSLATIONS[tens]}"
      words << translate_less_than_20(tens, ones) if tens < 2
      words << " #{ONES_TRANSLATIONS[ones]}" if tens >= 2
      words.strip.gsub(/\s+/, ' ')
    end

    private

    def translate_less_than_20(tens, ones)
      ONES_TRANSLATIONS[tens * 10 + ones]
    end
  end
end
