require "serialcode_generator/version"
require "securerandom"

module SerialcodeGenerator
  def self.generate(digit = 6)
    raise 'Digit is not integer' unless digit.is_a?(Integer)
    pattern = ([*('a'..'z'), *('A'..'Z'), *('1'..'9')] - %w(0 O o 1 l))
    size = pattern.size
    serialcode = ''
    digit.times { serialcode << pattern[SecureRandom.random_number(size)]}
    serialcode
  end
end
