class CustomersController < ApplicationController

	def pb
		@customer_name = ENV["pb_customers_name"]
		@cust_email = ENV["pb_customers_email"]

		@name = ""
		combined = @cust_email.zip(@customer_name)
		combined.each do |group|
			email = group[0]
			@name = group[1]
			#UserNotifier.send_pb_email(email, @name).deliver_now
		end
	end

	def non_pb
		@customer_name = ENV["non_pb_customers_name"]
		@cust_email = ENV["non_pb_customers_email"]

		@name = ""
		combined = @cust_email.zip(@customer_name)
		combined.each do |group|
			email = group[0]
			@name = group[1]
			#UserNotifier.send_non_pb_email(email, @name).deliver_now
		end
	end
end