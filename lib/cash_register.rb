
require 'pry'

class CashRegister
    attr_accessor :discount, :total, :last_transaction
    attr_reader :items
    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end
    
    def add_item(item, price, quantity = 1)
        @total = @total + (quantity * price)
        quantity.times {@items <<item}    
        @last_transaction = price*quantity
    end
    
    def apply_discount
        if @discount == 0
            return "There is no discount to apply."
        else
        @total = @total - (@total * (@discount.to_f/100))
        return "After the discount, the total comes to $#{@total.to_i}."
        end
    end

  

    def void_last_transaction
        @total = self.total - @last_transaction
        
    end

    

    

end
