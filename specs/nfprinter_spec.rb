require 'spec_helper'
require 'rails'

require File.dirname(__FILE__) + '/../libs/nf_printer'
describe 'nf printer' do
	it 'should print something when an invoice is issued' do
		NF.class_eval do
				cattr_accessor :called
				def self.print msg
					self.called = true
					puts 'passei por aqui'
				end			
		end
		inv = NF.invoice 1000.34, 'gad3'	
    NF.called.should be true
	end
end
