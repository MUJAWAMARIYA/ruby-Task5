class Vendingmachine
    attr_accessor :productname, :price, :payment
    def initialize(productname,price,payment)
        @productname=productname
        @price=price
        @payment=payment
end
end
vendingmachine=Vendingmachine.new("milk","400","cash")
puts "product available is:" 
puts(vendingmachine.productname) 
puts " price is:"
puts(vendingmachine.price) 
puts "methode of payment is:"
puts(vendingmachine.payment) 
 
class Receive_payment
def receive_payment
    puts "wellcome"
    click_any_button=gets.to_i

if click_any_button==0 
    puts "wellcome and pay"
else
    puts"exit"
    
end


end
receive_payments=Receive_payment.new
puts(receive_payments.receive_payment)
  def give_milk(give_milk)
    @give_milk=give_milk
    if give_milk==400
        puts "take yours"
    end
end
end
pay=Receive_payment.new("400")
puts(pay.give_milk)
