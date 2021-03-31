# while
flag = True
count = 0
while( flag == True):
    if(count == 5):
        flag = False
    count = count + 1
print("while loop terminated with flag, count:",count)

#break
flag = True
count = 0
while( flag == True):
    if(count == 5):
        break
    count = count + 1
print("while loop terminated with break, count:",count)

#no labeled loops

#continue
num = 1
sum = 0
while(num <= 15):
    if (num % 2 != 0):
        num = num + 1
        continue; 
    sum = sum + num
    num = num + 1

print("\nsum of even values from 1 to 15 is" , sum)

#no logic controlled for

#no do while