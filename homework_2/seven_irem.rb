# Hello World Program in Ruby
puts "Hello World!";

#while
$flag = true
$count = 0
while ( $flag == true) do
      if($count == 5)
        $flag = false
      end
      $count = $count + 1
end

puts("while loop terminated with flag, count: #$count")
   

#break
$flag = true
$count = 0
while( $flag == true) do
      if($count == 5)
         break
      end
      $count = $count + 1
end

puts("while loop terminated with break, count: #$count")


#no labeled loops----


#next
$num = 1;
$sum = 0;
while($num <= 15) do
    if ($num % 2 != 0) 
        $num = $num + 1
        next
    end
      $sum = $sum + $num
      $num = $num + 1
end

puts("sum of even values from 1 to 15 is #$sum");
 
 
#until -- pretest
$flag = true
$count = 0
until $flag == false do
      if($count == 5)
        $flag = false
      end
      $count = $count + 1
end 
puts("until end loop terminated with flag, count: #$count")


#no logically controlled fır loop


#begin end loop - posttest 
$flag = false
$count = 0
begin
      if($count == 5)
        $flag = false
      end
      $count = $count + 1
end while $flag == true

puts("begin end loop terminated with flag, count: #$count")


