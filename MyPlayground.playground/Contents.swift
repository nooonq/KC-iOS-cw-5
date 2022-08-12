import UIKit

let family = ["Baba" , "Mama" , "Sarah" , "AlHumaidi" , "Nourah"]

var evenNumbers = [ 2 , 4 , 6 , 8 , 10 , 12 ]

var Numbers = [ 1 , 2 , 3 , 4 , 5 ]

print(family.count)

evenNumbers.remove(at: 1)

evenNumbers += [ 16 , 18 , 20 , 22 ]

print(evenNumbers.randomElement())

evenNumbers.removeAll()

for numbers in Numbers{
    print(numbers)
}

Numbers.append(6)
Numbers.append(7)
Numbers.append(8)
Numbers.append(9)
Numbers.append(10)

for i in Numbers{
    print(i)
}



