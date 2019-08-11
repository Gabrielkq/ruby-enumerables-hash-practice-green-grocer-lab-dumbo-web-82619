def consolidate_cart(cart)
  # code here
  new_cart = {}
  cart.each do |line_item_array| 
    line_item_array.each do |item,key_val|
      new_cart[item] ||= key_val
      if new_cart[item][:count]
        new_cart[item][:count] += 1 
      else
        new_cart[item][:count] = 1 
      end
    end
  end
  new_cart
end

def apply_coupons(cart, coupons)
  
  coupons.each do |coupon| 
    coupon.each do |attribute, value| 
      name = coupon[:item] 
    
      if cart[name] && cart[name][:count] >= coupon[:num] 
        if cart["#{name} W/COUPON"] 
          cart["#{name} W/COUPON"][:count] += 1 
        else 
          cart["#{name} W/COUPON"] = {:price => coupon[:cost]/coupon[:num], 
          :clearance => cart[name][:clearance], :count => coupon[:num] }
        end 
  
      cart[name][:count] -= coupon[:num] 
    end 
  end 
end 
  cart 
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end

'def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    coupon.each do |attribute, value| 
      name = coupon[:item]
      if cart[name] && cart[name][:count] > coupon[:num]
        if cart["#{name} W/COUPON"]
          cart["#{name} W/COUPON"][:count] += 1 
        else cart["#{name} W/COUPON"] = {:price => (coupon[:cost]/coupon[:num]), :clearance => cart[name][:clearance], :count => coupon[:num]}
        end
      cart[name][:count] -= coupon[:num]  
      end
                end 
                end  
    
  # code here
  cart
end
'
