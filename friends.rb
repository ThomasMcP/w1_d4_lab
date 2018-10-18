def get_name(person)
  return person[:name]
end

def get_tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  return true if person[:favourites][:snacks].include?(food)
end

def new_friend(person, friend)
  person[:friends].push(friend)
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def total_everyone_money(people)
  total_money=0
  for person in @people
    total_money += person[:monies]
  end
  return total_money
end

def loan(person1, person2, amount)
  person1[:monies] -= amount
  person2[:monies] += amount
end

def total_food(people)
  total_snacks = []
  for person in people
    total_snacks.concat(person[:favourites][:snacks])
  end
  return total_snacks
end

def billy_nae_mates(people)
  nae_mates_people = []
  for person in people
    if person[:friends] == []
      nae_mates_people.push(person[:name])
    end
  end
  return nae_mates_people
end
