//
//  main.swift
//  L1_AndreianovDmitrii
//
//  Created by Dmitrii Andreianov on 6/17/19.
//  Copyright © 2019 Dmitrii Andreianov. All rights reserved.
//

import Foundation

// Задание 1
let a: Double = 133.2
let b: Double = 5312.1
let c: Double = 3232.4
var D: Double = b*b - (4*a)*c
var x1: Double = (-b + sqrt(D) / (2*a))
var x2: Double = (-b - sqrt(D) / (2*a))

if D < 0 {
    print("Уравнение не имеет действительных корней")
}
else if D == 0.0 {
    print ("Уравнение имеет один действительный корень \(x1)")
}
else if D > 0 {
    print ("Уравнение имеет два действительных корня \(x1), \(x2)")
}

// Задание 2
let A: Double = 2.3
let B: Double = 4.6
var C: Double = sqrt (A*A + B*B)
var S: Double = (A*B)/2
var P: Double = A*B*C

// Задание 3
var vklad: Int = 10000
let procent: Int = 12
let dohod: Int = (vklad * procent) / 100
var itog: Int = vklad + dohod
var n = Int()
repeat {
    print (itog + dohod*n)
 n = n+1
}
    while n<=5


