use std::collections::HashMap;

fn foo(k: &str, v: &str) {
    println!("Key: {}, Value: {}", k, v); 
}

fn main() { 
    //create
    let mut mymap = HashMap::new();
    //initialize
    mymap.insert("Name", "Kate");
    mymap.insert("City", "Berlin");
    mymap.insert("Age", "27");
    mymap.insert("Height", "159");
    mymap.insert("Weight", "46");
    println!("**Initial Map**");
    for (mapkey, &mapval) in mymap.iter() {
        println!("Key: {}, Value: {}", mapkey, mapval);
    }
    
    println!("\nValue of key Name: {}\n", mymap["Name"]); //get the value for given key
    mymap.insert(&"Country", "Germany"); //adding new element
    mymap.remove(&"City");  //removing element
    *mymap.get_mut("Name").unwrap() = "Alice"; //modify value of Key Name
    
    //checking key existance
    println!("Key City existance: {}", mymap.contains_key(&"City"));
    println!("Key Country existance: {}", mymap.contains_key(&"Country"));
    
    //cheking value existance
    let bool_exist = mymap.values()
        .any(|&val| *val == *"46");
        
    println!("Value 46 Existance: {}", bool_exist);
    
    println!("\n**Modified Map**");
    //printing contents by foo
    for (keyval, &val) in mymap.iter() {
        foo(keyval, val);
    }

}