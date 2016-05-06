require File.dirname(__FILE__) + '/spec_helper'

describe "The maruku CLI" do
  it "has a nonzero exit code on invalid options" do
    `ruby -Ilib bin/maruku --foo 2>&1`
    expect($?.exitstatus).not_to be == 0
  end
end
