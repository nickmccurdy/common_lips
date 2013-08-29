module CommonLips
  VERSION = '0.0.1'

  REPLACEMENTS = {
    ')' => '(',
    '(' => ')'
  }

  def self.swap_parens(code)
    map_string(code) { |char| REPLACEMENTS[char] || char }
  end

  private

  def self.map_string(str, &block)
    str.split(//).map(&block).join
  end
end
