require 'spec_helper'

describe CommonLips do
  before :all do
    LIPS_FILE = File.open('spec/samples/fib.lips', 'r').read
    LISP_FILE = File.open('spec/samples/fib.lisp', 'r').read
  end

  it 'should have a version number' do
    CommonLips::VERSION.should_not be_nil
  end

  it 'should convert Lips code to Lisp' do
    expect(CommonLips.swap_parens(LIPS_FILE)).to eq LISP_FILE
  end

  it 'should convert Lisp code to Lips' do
    expect(CommonLips.swap_parens(LISP_FILE)).to eq LIPS_FILE
  end
end
