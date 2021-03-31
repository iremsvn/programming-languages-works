void main() {
  
   //while loop
    var flag = true;
    var count = 0;
    while( flag == true){
      if(count == 5){
        flag = false;
      }
      count++;
    }
   print("while loop terminated with flag, count: ${count}");
  
  
   //while loop with break
    flag = true;
    count = 0;
    while( flag == true){
      if(count == 5){
        break;
      }
      count++;
    }
   print("while loop terminated with break, count: ${count}\n");
  
  
  //labeled break
    var i = 1;
    var k = 5;
    outer:  
    while (i <= 5) {
          k = 5;
          while(k >= 1){
              print("i : ${i} k : ${k}");
              if (k == i ) {
                  if (i == 3) {
                      print("reached middle value");
                      break outer;
                  }
                  print("inner terminating with i : ${i} k : ${k}");
                  break ;
              }
              k--;
          }
       i++;
    }
    
  
  //continue example
   var num = 1;
   var sum = 0;
   while(num <= 15) { 
      if (num % 2 != 0) {
         num++;
         continue;  //pass the rest of the loop
      } 
      sum = sum + num;
      num++;
   } 
   print("\nsum of even values from 1 to 15 is ${sum}");
  

  //for loop
    flag = true;
    count = 0;
    for(;flag == true;){
      if(count == 5){
        flag = false;
      }
     count++;
    }
   print("for loop terminated with flag, count: ${count}");


  //do while loop
    flag = false;
    count = 0;
    do{
      if(count == 5){
        flag = false;
      }
      count++;
    }while( flag == true);
   print("do while loop terminated with flag, count: ${count}");
  
}