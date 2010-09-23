class NF
	class << self
		alias :old_invoice :invoice
		def invoice value, customer
			old_invoice value, customer
			print "impressa nf de valor #{value} do cliente #{customer}"
		end
		def print msg
			puts msg
		end
	end
end
