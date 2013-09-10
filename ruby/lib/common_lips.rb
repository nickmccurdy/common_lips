# The central module for CommonLips
module CommonLips

  extend self

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

end
