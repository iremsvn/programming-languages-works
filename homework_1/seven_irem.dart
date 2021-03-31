foo(String k, Map m) {
  print("Key : $k, value : ${m[k]}");
}

void main() {   
  //initialize
  var arr = {'Name':'John', 'City':'Rome', 'Age': 28, 'Height': 182}; 
  print(arr["Name"]); //get the value for a given key
  print(arr["Salary"]); //get the value for nonexistent key
  
  print('**Initial Version**');
  print(arr);   //print initial vesion
  arr['Weight'] = 79;   //add new element
  arr['City'] = 'Seattle';   //change value of a key

  arr.remove('Height');   //remove an element
  arr.remove('Salary'); //remove nonexistent element
  
  print(arr.containsKey('Name'));   //search for existance of key
  print(arr.containsValue('John'));   //search for existance of value

print('\n**Modified Version**');  
  //printing by loop using function
  for (var k in arr.keys) {
      foo(k,arr);
  } 

  print('\n');
  print(arr.keys);    //printing keys
  print(arr.values);   //printing values
}