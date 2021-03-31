# foo function to print pairs
def foo(k, temp)
    print "Key is: ", k, " Value is: ", temp[k]
    puts
  end

#initialize hash
arr = { "Name" => "Jane", "City" => "Amsterdam", "Age" => 32, "Weight" => 58}
puts "**Initial Hash**", arr   #printing first version

puts "Value for key Name is ", arr["Name"]   #get the value for Name key
puts "Value for key Salary is ", arr["Salary"] #get the value for nonexistent key

puts ""
arr["Height"] = 162   #add new element

arr.delete("City")   #remove new element
arr.delete("Salary")   #remove nonexistent element

arr["Age"] = 33   #modify Age 

#search for existance of a key
puts "City key existance: ", arr.key?("City")
#search for existance of a value
puts "Value Amsterdam existance: ", arr.has_value?(162)

#print modified version in loop by foo
puts "\n**Modified Hash**"
arr.each do |key, value|
  foo(key, arr)
end