# The central module for CommonLips
module CommonLips

  extend self

  # The version of the CommonLips gem
  VERSION = '0.0.1'

  # A hash of characters that should be replaced when converting between Lips
  # and Lisp (and vice versa)
  REPLACEMENTS = {
    ')' => '(',
    '(' => ')'
  }

  # Converts source code between Lips and Lisp by swapping all left and right
  # parenthesis
  #
  # @param [String] code a String of source code to convert
  #
  # @return [String] the converted source code
  def convert(code)
    map_string(code) { |char| REPLACEMENTS[char] || char }
  end

  private

  # Lets you map over a String as if it were Enumerable
  #
  # @param [String] str the String to map over
  # @yield a block that changes each character in the String
  #
  # @return the resulting String (after mapping each of its characters)
  def map_string(str, &block)
    str.split(//).map(&block).join
  end

end
