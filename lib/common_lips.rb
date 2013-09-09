# The central module for CommonLips
module CommonLips

  extend self

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

  # Executes Common Lisp code and returns the resulting stdout as a String. This
  # works by shelling out to clisp, which must be installed.
  #
  # @param [String] code the Lisp code to execute
  #
  # @return [String] the result of the Lisp program, with leading and trailing
  # whitespace removed
  def run_lisp(code)
    `echo '#{code}' | clisp -`.strip
  end

  # Executes Common Lips code and returns the resulting stdout as a String.
  # This works by converting the code to Common Lisp and then calling run_lisp.
  #
  # @param [String] code the Lips code to execute
  #
  # @return [String] the result of the Lips program, with leading and trailing
  # whitespace removed
  def run(code)
    run_lisp convert code
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
