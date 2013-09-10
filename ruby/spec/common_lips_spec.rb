require 'spec_helper'

describe CommonLips do
  it 'runs Lips code' do
    expect(CommonLips.run ')+ 2 2(').to eq ''
    expect(CommonLips.run ')print )+ 2 2((').to eq '4'
  end

  it 'runs Lisp code' do
    expect(CommonLips.run_lisp '(+ 2 2)').to eq ''
    expect(CommonLips.run_lisp '(print (+ 2 2))').to eq '4'
  end
end
