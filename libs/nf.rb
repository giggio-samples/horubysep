class NF
	attr_reader :value
	attr_reader :customer_id
	def initialize value, customer_id
		@value = value
		@customer_id = customer_id
	end
	def self.invoice value, customer_id
		puts "invoice emitida no valor #{value}, para o cliente com id #{customer_id}"
		NF.new value, customer_id
	end
end
