#Object Oriented Programming: Exercise 3

class Tax

    attr_accessor :item, :price, :tax

  def initialize(item)
    @item = item.to_s
    @price = price.to_f
    @_tax = tax.to_f

  end

  def sort(item)
    if @item.include?("imported")
      import_tax
    elsif @item.include?("chocolates") || @item.include?("book") || @item.include?("pills")
      output 
    else
      basic_tax
    end
  end

  def basic_tax
    @price = @item.split.last 
    @tax = @price.to_f * 0.10
    
    item_price  
  end 
  
  def import_tax
    @price = @item.split.last
    @tax = @price.to_f * 0.05
   
    item_price
  end

  def item_price
    @w_tax = @price.to_f + @tax.to_f
    
    total_tax
    output
  end

  def total_tax
    sum_tax = @tax
    puts sum_tax 
  end
  
  def output
    @item = @item.gsub(/\bat\b/, ':')
    print @item[/(.*)\s/,1], " ", @w_tax 
    
    
  end

end

item1 = "1 imported box of chocolates at 10.00"  

test = Tax.new(item1)

test.sort(item1)


