--foo function to print a pair
function foo(k)
     print(k, mytable[k])
end

--initialize
mytable = {["Name"] = "John", ["City"] = "Rome", ["Age"] = 28, ["Height"] =  182}

print(mytable)  -- type and unique id of the object, not the contents

print("\nName is ", mytable["Name"]) --get value for a key
print("Salary is ", mytable["Salary"])   --get value for nonexistent key

print("\n**Initial Table**")
for k, v in pairs(mytable) do --print initial by foo
      foo(k, v)
end

mytable["Weight"] = 79 --add new element

mytable["Age"] = nil   --remove an element
mytable["Salary"] = nil    --remove nonexistent element

mytable["City"] = "Seattle" --modify value

--search for key Name
if mytable["Name"] ~= nil then print("\nkey Name exists") end

--search value Rome
for k, v in pairs(mytable) do
        if v == "Rome" then print("value Rome exists") end
end

--search value Seattle
for k, v in pairs(mytable) do
        if v == "Seattle" then print("value Seattle exists") end
end

print("\n**Table Changed**")
for k, v in pairs(mytable) do --print modified by foo
       foo(k)
end
print("\n")
