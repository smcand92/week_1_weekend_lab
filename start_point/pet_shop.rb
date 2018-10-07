def pet_shop_name(name)
  return name[:name]
end

def total_cash(money)
  return money[:admin][:total_cash]
end

def add_or_remove_cash(total_cash, purchase)
  return  total_cash[:admin][:total_cash] += purchase
  return  total_cash[:admin][:total_cash] -= purchase
end

def pets_sold(sales)
  return sales[:admin][:pets_sold]
end

def increase_pets_sold(sales, total_sold)
  return sales[:admin][:pets_sold] += total_sold
end

def stock_count(animals)
  return animals[:pets].count
end

def pets_by_breed(shop, breed)
  result = []
  for pet in shop[:pets]
    if pet[:breed] == breed
      result << pet
    end
  end
  return result
end

def find_pet_by_name(shop, name)
  for pet in shop[:pets]
    if pet[:name] == name
      return pet
    end
  end
  return nil
end

def remove_pet_by_name(shop, name)
  pet_to_delete = find_pet_by_name(shop, name)
  shop[:pets].delete(pet_to_delete)
end

def add_pet_to_stock(stock, new_pet)
  stock[:pets].push(new_pet)
end


def customer_cash(cash)
  return cash[:cash]
end

def remove_customer_cash(customer, spend)
  customer[:cash] -= spend
end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  return customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
  if customer[:cash] < new_pet[:price]
    return false
  else
    return true
  end
end
