class NF
	class << self
		alias :old_invoice :invoice
		def invoice value, customer
			inv = old_invoice value, customer
			print "impressa nf de valor #{value} do cliente #{customer}"
			inv
		end
		def print msg
			puts msg
		end
	end
end
