def pet_shop_name(name)
  return name[:name]
end

def total_cash(name)
  name[:admin][:total_cash]
end

def add_or_remove_cash(name, monies)
  new_ballance = name[:admin][:total_cash] += monies
  return new_ballance
end

def pets_sold(name)
  name[:admin][:pets_sold]
end

def increase_pets_sold(name, number)
  new_pets_sold = name[:admin][:pets_sold] += number
  return new_pets_sold
end

def stock_count(name)
  name[:pets].length
end

def pets_by_breed(name, breed)
  new_breed_array =[]
  for creature in name[:pets]
    if creature[:breed] == breed
      new_breed_array.push(creature[:name])
    end
  end

  return new_breed_array
end

def find_pet_by_name(name, pet_name)
  pet = nil
  for creature in name[:pets]
    if creature[:name] == pet_name
      pet = creature
    end
  end
#  meals = { breakfast: "yoghurt",  lunch: "roll" }
#  p meals[:breakfast]
#
  return pet
end

def remove_pet_by_name(name, pet_name)

  for creature in name[:pets]
    if creature[:name] == pet_name
      name[:pets].delete(creature)
    end
  end
#  meals.delete("breakfast")
end

def add_pet_to_stock(name, new_pet)
  name[:pets].push(new_pet)
end

def customer_cash(customer_array)
  return customer_array[:cash]
end

def remove_customer_cash(customer_array, ammount)
  customer_array[:cash] -= ammount
  return customer_array[:cash]
end


def customer_pet_count(customer_array)
  return customer_array[:pets].count
end

def add_pet_to_customer(customer_array, new_pet)
  new_pet_name = new_pet[:name]
  customer_array[:pets][0] = :name[new_pet_name]
end

def customer_can_afford_pet(customer_array, new_pet)
  if customer_array[:cash] >= new_pet[:price]
    return true
  end
end

def sell_pet_to_customer (pet_shop, new_pet, customer_array)

  if new_pet == nil
  return

  elsif customer_array[:cash] < new_pet[:price]
  return

  else

    customer_array[:pets][0] = new_pet

    pet_shop[:admin][:pets_sold] += 1

    customer_array[:cash] -= new_pet[:price]

    pet_shop[:admin][:total_cash] += new_pet[:price]

  end

end
