require 'spec_helper'

describe CommonLips do
  before :all do
    LIPS_FILE = File.open('spec/samples/fib.lips', 'r').read
    LISP_FILE = File.open('spec/samples/fib.lisp', 'r').read
  end

  it 'has a version number' do
    expect(CommonLips::VERSION).to_not be_nil
  end

  it 'converts Lips code to Lisp' do
    expect(CommonLips.convert(LIPS_FILE)).to eq LISP_FILE
  end

  it 'converts Lisp code to Lips' do
    expect(CommonLips.convert(LISP_FILE)).to eq LIPS_FILE
  end
end
