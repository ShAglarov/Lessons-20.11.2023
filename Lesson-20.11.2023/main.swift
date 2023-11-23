//
//  main.swift
//  Lesson-20.11.2023
//
//  Created by Shamil Aglarov on 20.11.2023.
// Урок 2

import Foundation

var a = 10
var b = 10

var num1 = 6
var num2 = 9


func add(a: Int, b: Int) {
    let result = a + b
    print(result)
}

//> < == !=

 Void = () - ничего

num1 > num2 ? print("\(num1) больше чем  \(num2)") : add(a: num1, b: num2)

let maximum = max(num1, num2)
let minimum = min(num1, num2)
print()

print(maximum)
print(minimum)

func printName() -> Void {
    print("Alex")
}

func printFIO() -> () {
    print("Bolgarev")
    print("Alexey")
    print("Osechkin")
}

printName()
printFIO()

func add(argA: inout Int, argB: inout Int) {
    argA += a
    argB += b
}

add(argA: &num1, argB: &num2)

print(num1)
print(num2)

let text = "one"

for i in 0..<text.count  {
    
    print("index: \(i)")
}

Массивы

var numbers: [Int] = [1, 2, 3, 4, 5]
print(numbers)

index = [0, 1, 2, 3, 4]
value = [1, 2, 3, 4, 5]

for value in numbers.reversed() {
    if value == 2 {
        print(value)
    }
}

var names = [String]()
var namesString: [String] = []

names.append("Tom")
names.append("Alice")
names.append("Kate")

for (index, value) in names.enumerated().reversed() {
    print("index: \(index)\nvalue: \(value)")
}

var namesTwo = Array(1..<10)
print(namesTwo)

var numberThree = [Int] (3..<7)
print(numberThree)

var arrayFour = Array(stride(from: 1, to: 20, by: 3))

for value in arrayFour {
    print(value)
}

var arrayFive = Array(stride(from: 10, through: 0, by: -1))

for value in arrayFive {
    print(value)
}
print(arrayFive)
