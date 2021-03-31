
--while loop
flag = true
count = 0
while( flag == true)
do
    if(count == 5)
    then
        flag = false
    end

count = count + 1
end

print("while loop terminated with flag, count: ",count)
 
 
 --while loop with break
flag = true;
count = 0;
while( flag == true)
do
      if(count == 5)
      then
        break
      end
count = count + 1
end

print("while loop terminated with break, count: ", count)


--no continue in lua, goto might be used instead
   num = 1
   sum = 0
   ::redo::
   while(num <= 15)
   do
      if (num % 2 == 1)
      then
         num = num + 1
         goto redo
      end
      sum = sum + num
      num = num + 1
   end 
   print("sum of even values from 1 to 15 is ", sum);
   
   
--no logic controled for loop in lua


--posttest loop
  flag = true
  count = 0
  repeat
      if(count == 5)
      then
        flag = false
      end
      count = count + 1
  until( flag == false) --repeats loop until the condition is statisfied

print("repeat loop terminated, count: ", count)