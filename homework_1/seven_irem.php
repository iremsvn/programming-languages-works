<!DOCTYPE html>
<html>
<body>

<?php
//foo function to print pairs
function foo($k, $arr) {
  echo "Key=" . $k . ", Value=" . $arr[$k];
}

$arr = array("Name"=>"Maria", "Country"=>"Italy", "Age"=>14, "Height"=>154 );

//printing initial array
echo "<br>**Initial Array**<br>";
foreach($arr as $x => $x_value) {
  echo "Key=" . $x . ", Value=" . $x_value;
  echo "<br>";
}

//getting values for keys Name and Age
echo "<br>" . $arr['Name'] . " is " . $arr['Age'] . " years old.<br>";
//getting values for keys Name and Age
echo "Salary is" . $arr['Salary'] . "<br>";

//We can find key by value easily in php
echo array_search("Maria",$arr) . "<br>" ;

//adding new element
$arr['Surname'] = "Brown";
//remove an element
unset($arr["Height"]);
//remove nonexistent element
unset($arr["Car"]);

//modify element
$arr['Age'] = 16;

//search for Key Country
$keybool = array_key_exists("Country", $arr);
if ($keybool == 1) {
  echo "Key Country exists";
}
else{
	echo "Key Country does not exist";
}
echo "<br>";

//search for Key Height 
$keybool = array_key_exists("Height", $arr);
if ($keybool == 1) {
  echo "Key Height exists";
}
else{
	echo "Key Height does not exist";
}
echo "<br>";

//search for Value Italy 
$valbool = in_array('Italy', $arr);
if ($valbool == 1) {
  echo "Value Italy exists";
}
else
	echo "Value Italy does not exist";
    
echo "<br>";
   
//printing modified array in loop by foo
echo "<br>**Modified Array**<br>";
foreach($arr as $x => $x_value) {
  foo($x, $arr);
  echo "<br>";
}
?>

</body>
</html>
