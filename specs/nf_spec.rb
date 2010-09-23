require 'spec_helper'

describe NF do

  it 'should issue an invoice when value and customer id supplied' do
		inv = NF.invoice 1000.34, 'gad3'
		inv.should_not == nil
		inv.value.should == 1000.34
		inv.customer_id.should == 'gad3'
  end
end
