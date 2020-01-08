
#1. Accept Order
#2. Display Order status
#3. Check Food Item is available for ordering
#4. Change status of order


class User

        attr_accessor :quantity, :amount, :fooditem
	@@menu={"Paneer roll"=>60,"Dal Makhani"=>70,"veg thali"=>80}
	@@availability={"Paneer roll"=>false, "Dal Makhani"=>true, "veg thali"=>true}
	def initialize (name,ph_no,addr)

		@name = name
		@ph_no = ph_no
		@addr = addr
	end	
	
	def self.menu
		puts @@menu
	end
	def self.availability
	
		@@availability
	end
	def bill 
		@x = @@menu[@fooditem]	
		@amount= @quantity * @x
		puts " #{@amount}"	
	end
end

		puts "Enter your name"
                name = gets.chomp
                puts "Enter your Phone Number"
                ph_no = gets.to_i
                puts "Enter your Address"
		addr = gets.chomp

	user1=User.new(name,ph_no,addr)

loop do
	puts "Want to  order? yes or no?"
      	ans=gets.chomp
	if (ans=="yes")
		puts User.menu
                print "Choose one dish from the menu: "
                user1.fooditem = gets.chomp
                status=User.availability[user1.fooditem]
                if (status == true)
                        print "Enter quantity:"
                        user1.quantity = gets.to_i
                        print "your total amount is"
                        puts user1.bill
                        puts "Your payment method is COD"
                        puts "Order placed successfully!!"
                        order_status="true"
                        puts "We are preparing your food."
                        ans="no"
                        while ans!="yes"
                                puts "Order delivered? yes or no?"
                                ans=gets.chomp
                       	        if (ans=="yes")
                                        puts "Kindly complete the payment"
                                        puts "Thanks for ordering"
                                else
                                        puts "Wait for a while"
                                end
                        end

                else
                        puts "This item is not available now. Order something different"
		end


	else 
		puts"Thank You!"

        end	
break if (order_status=="true")
end



