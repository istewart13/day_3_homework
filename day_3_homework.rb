# PART A:

lines = ['Gyle Centre', 'Edinburgh Park', 'Murrayfield Stadium', 'Haymarket', 'Princes Street']

# 1
puts lines.length
# 2
puts lines[1]
# 3
puts lines[-1]
puts lines[4]
puts lines.last
# 4
puts "index position 3"
# 5
lines.unshift("Airport")
# 6
lines.push("York Place")
# 7
lines.delete("Edinburgh Park")
# 8
lines.delete_at(1)
# 9
lines.reverse
# 10
for line in lines
  puts line
end

i = 0
while(i < lines.length)
  puts lines[i]
  i += 1
end

# PART B:
my_hash = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

# 1
puts my_hash[1]
# 2
puts my_hash[:two]
# 3
puts my_hash["two"]
# 4
my_hash[3] = "Three"
puts my_hash
# 5
my_hash[:four] = 4
puts my_hash

# PART C:

users = {
    "Jonathan" => {
      :twitter => "jonnyt",
      :favourite_numbers => [12, 42, 75, 12, 5],
      :home_town => "Stirling",
      :pets => {
        "fluffy" => :cat,
        "fido" => :dog,
        "spike" => :dog
      }
    },
    "Erik" => {
      :twitter => "eriksf",
      :favourite_numbers => [8, 12, 24],
      :home_town => "Linithgow",
      :pets => {
        "nemo" => :fish,
        "kevin" => :fish,
        "spike" => :dog,
        "rupert" => :parrot
      }
    },
    "Avril" => {
      :twitter => "bridgpally",
      :favourite_numbers => [12, 14, 85, 88],
      :home_town => "Dunbar",
      :pets => {
        "colin" => :snake
      }
    },
  }

# 1
puts users["Jonathan"][:twitter]
# 2
puts users["Erik"][:home_town]
# 3
puts users["Erik"][:favourite_numbers]
# 4
puts users["Avril"][:pets]["colin"]
# 5
puts users["Erik"][:favourite_numbers].min
# 6
numbers_array = users["Avril"][:favourite_numbers]
for num in numbers_array
  puts num if num.even?
end
# 7
puts users["Jonathan"][:favourite_numbers].uniq.sort
# 8
users["Erik"][:favourite_numbers].concat([7])
puts users["Erik"][:favourite_numbers]
# 9
users["Erik"][:home_town] = "Edinburgh"
puts users["Erik"][:home_town]
# 10
users["Erik"][:pets]["fluffy"] = :dog
puts users["Erik"][:pets]
# 11
users["Iain"] = {
  twitter: "",
  favourite_numbers: [1,11,111],
  home_town: "Glasgow",
  pets: {
    "alfred" => :cat 
  }
}
puts users["Iain"]