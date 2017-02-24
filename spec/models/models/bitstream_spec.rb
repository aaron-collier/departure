require 'spec_helper'

describe Dspace::Bitstream 
  it 'has a count greater than zero' do
  	expect(subject.count).to be > 0
  end
end