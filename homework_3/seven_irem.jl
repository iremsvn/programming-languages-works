#----------design issue: nested functions -----
function nested_out1(n)
    if (n >= 0)
        function nested1(msg)
            println(msg)
            return "false"
        end
    else
        function nested1(msg)
            println(msg)
            return "true"  
        end
    end
end

is_neg = nested_out1(8) #here we get the function name
println(is_neg)
println("***")
is_res = is_neg("hello")   #here we get return value
println(is_res) #we can reach the function even though outer not called


println("------")
#----------design issue: scope of local variables-----
#without global prename

x = "name" # global

function scope1()
    x = "id" # new local
    println(x)
end

scope1()
println(x)

println("***")
#with global prename
function scope2()
    global x = "surname" # global will change
    println(x)
end

scope2()
println(x)


println("------")
#------design issue: parameter passing methods (pass by assignment)-----
#immutable object, different object when assigned
my_number = 52
function pass1(k)
    k = k % 3
    return k
end

println(pass1(my_number))
println(my_number)

println("***")
#mutable object
my_numbers = [5, 7, 2, 3]
function pass2(n1)
    n1[1] = 9
    return n1 
end

println(pass2(my_numbers))
println(my_numbers) #it is also changed

println("***")
my_numbers2 = [12, 3, 0, 5,7]
function pass2(n2)
    n2 *= 2
    return n2 
end

println(pass2(my_numbers2))
println(my_numbers2) #it not changed since new list created by rule of language


println("------")
#------design issue: keyword and default parameters-----
#default parameters
p1 = 6
function def(param1, param2 = 1)
    return param1 + param2
end

println(def(p1))


println("***")
#keyword parameters 1
function keyword1(param1;param2 = 1)
    return param1 + param2
end

println(keyword1(12,))



println("***")
#keyword parameters 2
function keyword2(;param1 = 1, param2 = 1)
    return param1 + param2
end

println(keyword2())



println("***")
#keyword parameters 3
function keyword3(;param1 = 1, param2 = 1)
    return param1 + param2
end

println(keyword3(param1 = 4, param2 = 6))



println("------")
#--------design issue: closure-----
function num_func_out(n)
    num = n;
    
    function num_func()
        println(num)
    end
    
    return num_func
end

n1_func = num_func_out(100)
n2_func = num_func_out(2000)
n1_func()
n2_func()