def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(name_array)
  badge_array = [] #empty array
  name_array.each do |name| #loop to fill array w/ names 
    badge_array << badge_maker(name)
  end
  return badge_array #return full array once all names are in 
end

def assign_rooms(name_array)
  room_assignments = [] #empty array
  name_array.each_with_index { |name, index| #each_with_index spits out name + number inside of array
    room_assignments << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
  } 
  return room_assignments #return array including everyone + their room numbers
end

def printer(name_array)
  badge_array = batch_badge_creator(name_array)
  badge_array.each do |badge|
    puts badge
  end
  room_assignments = assign_rooms(name_array)
  room_assignments.each do |room_assignment|
    puts room_assignment
  end
end
