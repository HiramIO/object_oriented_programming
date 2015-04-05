class Taxes
    def initialize(item, price)
        @item = item
        @price = price
    end

    def sales
        puts "The price for #{@item} after sales tax is #{@price * 1.10}"
    end

    def duties
        puts "The price for #{@item} after sales and duties is #{@price * 1.15}"
    end

    def sort
        puts "Was your item imported? y or n"
        @import = gets.chomp
        if @import == "y"
            self.duties
        elsif @import == "n"
            puts "Is your item exempt from sales tax? y or n"
            @exempt = gets.chomp
            if @exempt == "y"
                puts "Your item costs #{@price}."
            elsif @exempt == "n"
                self.sales
            else puts "Please try again"
            end
        else puts "Please try again."
        end
    end
end

    receipt = Taxes.new("lamp", 8)
    receipt.sort

