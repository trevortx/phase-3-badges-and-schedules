def badge_maker name
  "Hello, my name is #{name}."
end

def batch_badge_creator names
  names.map {|name| badge_maker(name)}
end

def assign_rooms names
  names.map.with_index {|name, index| "Hello, #{name}! You'll be assigned to room #{index + 1}!"}
end

def printer names
  i = 0
  while i < names.length
    puts badge_maker(names[i])
    i += 1
  end
  room_assignment = assign_rooms(names)
  i = 0
  while i < room_assignment.length
      puts room_assignment[i]
      i += 1
  end
end