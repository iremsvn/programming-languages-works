#function foo to print a pair
def foo(k):
    print('Key is: ', k, 'Value is: ', arr[k])

#initialize
arr = {'Name':'Pierre', 'City':'Paris', 'Age': 26, 'Height': 179}

print("Value for Age is: ", arr["Age"])    #get the value for Age key

print("**Initial Dictionary**\n", arr)

arr['Weight'] = 68     #add new element
del arr['Age']   #remove an element
arr['City'] = 'Istanbul' #modify a value

#search for Age key existance
if 'Age' in arr:
    print('Key Age exist')
else:
    print('Key Age does not exist')
#search for City key existance  
if 'City' in arr:
    print('Key City exist')
else:
    print('Key City does not exist')
 #search for Pierre value existance   
if 'Pierre' in arr.values():
    print('Value Pierre exist')
else:
    print('Value Pierre does not exist')
    
print("\n**Modified Dictionary**")

#print modified version in loop by calling foo
for k in arr:
    foo(k);
