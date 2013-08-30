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

  it 'runs Lips code' do
    expect(CommonLips.run ')+ 2 2(').to eq ''
    expect(CommonLips.run ')print )+ 2 2((').to eq '4'
  end

  it 'runs Lisp code' do
    expect(CommonLips.run_lisp '(+ 2 2)').to eq ''
    expect(CommonLips.run_lisp '(print (+ 2 2))').to eq '4'
  end
end
