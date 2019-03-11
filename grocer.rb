require "pry"
def consolidate_cart(cart)
  # code here
  answer = Hash.new
  cart.each do |item|
    if answer[item.keys[0]] == nil
      answer.merge!(item)
      answer[item.keys[0]].merge!({:count => 1})
    else
      answer[item.keys[0]][:count] += 1
    end
  end
  answer
end

def apply_coupons(cart, coupons)
  # code here
  new_hash = {}
  binding.pry 
  coupons.each do |coupon|
  cart.each do |key, value|
    if cart[:key] ==
    
  
      
      
      
    #{  
  #"AVOCADO" => {:price => 3.0, :clearance => true, :count => 1},
  #"KALE"    => {:price => 3.0, :clearance => false, :count => 1},
  #"AVOCADO W/COUPON" => {:price => 5.0, :clearance => true, :count => 1},
}
      
      
      
      end
 end 
 

def apply_clearance(cart)
  # code here
  cart.each do |thing, value|
    if value[:clearance]
      cart[thing][:price] = (0.8 * cart[thing][:price]).round(2)
    end
  end
  cart
end

def checkout(cart, coupons)
  # code here
  cart = consolidate_cart(cart)
  cart = apply_coupons(cart, coupons)
  cart = apply_clearance(cart)

  total = 0
  cart.each do |keys,values|
    total += (values[:price] * values[:count])
  end

  if total > 100
    total = (total *= 0.9).round(2)
  end

  total
end