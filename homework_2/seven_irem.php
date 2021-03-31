<!DOCTYPE html>
<html>
<body>

<?php
//while
$flag = true;
$count = 0;
while( $flag == true){
      if($count == 5){
        $flag = false;
      }
      $count++;
}
echo "while loop terminated with flag, count: $count <br>" ;
   
   
//break
$flag = true;
$count = 0;
while( $flag == true){
      if($count == 5){
        break;
      }
      $count++;
}
echo "while loop terminated with break, count: $count <br>" ;



//labels as numbered loops
	$i = 1;
    $k = 5;  
    while ($i <= 5) {
          $k = 5;
          while($k >= 1){
              echo "i : $i k : $k <br>";
              if ($k == $i ) {
                  if ($i == 3) {
                      echo "reached middle value <br>";
                      break 2;
                  }
                  echo "inner terminating with i : $i k : $k <br>";
                  break 1;
              }
              $k--;
          }
       $i++;
    }
    



//continue
   $num = 1;
   $sum = 0;
   while($num <= 15) { 
      if ($num % 2 != 0) {
         $num++;
         continue;  //pass the rest of the loop
      } 
      $sum = $sum + $num;
      $num++;
   } 
   echo "<br> sum of even values from 1 to 15 is $sum <br>";
   

//for loop
	$flag = true;
    $count = 0;
    for(;$flag == true;){
      if($count == 5){
        $flag = false;
      }
     $count++;
    }
   echo "for loop terminated with flag, count: $count <br>";

//do while
	$flag = false;
    $count = 0;
    do{
      if($count == 5){
        $flag = false;
      }
      $count++;
    }while( $flag == true);
   echo "do while loop terminated with flag, count: $count";


?>

</body>
</html>
