module CommonLips

  extend self

  VERSION = '0.0.1'

  REPLACEMENTS = {
    ')' => '(',
    '(' => ')'
  }

  def swap_parens(code)
    map_string(code) { |char| REPLACEMENTS[char] || char }
  end

  private

  def map_string(str, &block)
    str.split(//).map(&block).join
  end

end
