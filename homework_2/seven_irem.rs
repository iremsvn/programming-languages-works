
fn main() { 

    // while loop
    let mut flag = true;
    let mut count = 0;
    while flag == true {
      if count == 5 {
        flag = false;
      }
      count = count + 1;
    }
    println!("while loop terminated with flag, count: {}", count);
    
    
    //break
    flag = true;
    count = 0;
    while flag == true {
      if count == 5 {
           break;
      }
      count = count + 1;
    }
    println!("while loop terminated with break, count: {}", count);
    
    
    
    //labeled break
    let mut i = 1;
    let mut k = 5;
    'outer:  
    while i <= 5 {
          k = 5;
          while k >= 1 {
              println!("i : {} k : {}", i , k);
              if k == i  {
                  if i == 3 {
                      println!("reached middle value");
                      break 'outer;
                  }
                  println!("inner terminating with i : {} k : {}", i, k);
                  break ;
              }
              k = k - 1;
          }
       i = i + 1;
    }
    
    
    //continue
    let mut num = 1;
    let mut sum = 0;
   while num <= 15 { 
      if num % 2 != 0 {
         num = num + 1;
         continue;  //pass the rest of the loop
      } 
      sum = sum + num;
      num = num + 1;
   } 
   println!("sum of even values from 1 to 15 is {}", sum);
   
   
   //no logically controlled for loop**
   
   //no do while no posttest**
    
    

}