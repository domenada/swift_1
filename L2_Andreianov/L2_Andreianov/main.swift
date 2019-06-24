//
//  main.swift
//  L2_Andreianov
//
//  Created by Dmitry Andreyanov on 6/22/19.
//  Copyright © 2019 Dmitrii Andreianov. All rights reserved.
//

import Foundation


//Задание 1

func evenNumbers (Array: Int) -> [Int] {
    let Array = [3,4,5,7,8]
    for  Element in Array {
        if Element % 2 == 0 {
            print("это четное число")
        } else {
            print("это нечетное число")
        }
    }
    return Array
}

//Задание 2

func threeNumbers (Array: Int) -> [Int] {
    let Array = [3,4,5,7,8]
    for  Element in Array {
        if Element % 3 == 0 {
            print("это число делится на 3")
        } else {
            print("это число не делится на 3")
        }
    }
    return Array
}

//Задание 3

var newArray: [Int] = []
for i in 0...100 {
    newArray.append(i)
}
print (newArray)


// Задание 4

for value in newArray {
    if (value % 2) == 0 || (value % 3) == 0 {
        newArray.remove(at: newArray.index(of: value)!)
    }
}

print (newArray)



