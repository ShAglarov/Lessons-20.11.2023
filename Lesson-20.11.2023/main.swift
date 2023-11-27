//
//  main.swift
//  Lesson-20.11.2023
//
//  Created by Shamil Aglarov on 20.11.2023.
//

import Foundation

var name1: String = "Alex"
let name2: String = "Max"
var value: Int = 35
let drobValue: Double = 5.5
var isTrue: Bool = true
let isFalse: Bool = !isTrue

var age: Int = 0
print(age)
age = value
print(age)

// Double & Float
var piDouble: Double = 3.141592653589793
print(piDouble)
var piFloat: Float = 3.141592653589793
print(piFloat)

let afterFiveYears = 5

age = age + Int(piDouble)
print(age)
// не ! (инвертирование)

print(isFalse)

var minInt64: UInt8 = 0
var maxInt64: UInt8 = 255
print(minInt64)
print(maxInt64)

let minDouble = Double.leastNormalMagnitude
print(minDouble)
let maxDouble = Double.greatestFiniteMagnitude
print(maxDouble)

// >=, <=, ==, !=, !
age = 18

// Условный оператор (выполнится если это true)
if age >= 18 { // result = true

}

if age >= 17 { // result = false
    
}

if age >= 18 { // result = true
    print("Пора бы уже задуматься ")
}

if age <= 17 { // result = false
    print("Можно расслабиться")
}

if age <= 17 { // result = true && false
    print("Пора бы уже задуматься ")
} else {
    print("Можно расслабиться")
}

// Цикл for
// 1, 2, 3, 4, 5, 6

let str = "25"

let result = "Мне " + str + " лет "

for i in 1...20 {
    if age <= i { // result = true && false
        print("Мне \(i) лет, Порабы задуматься")
    } else {
        print("Мне \(i) лет,  Можно расслабиться")
    }
}

//конкатенация строк и интерполяция

let x = 10
let y = 20

if x != y {
    print("\(x) не равно \(y)")
}

let num1 = 22
let num2 = 15

if num1 > num2 {
    print("\(num1) больше чем \(num2)")
} else if (num1 < num2) {
    print("\(num1) меньше чем \(num2)")
} else if num1 == num2 {
    print("\(num1) равны \(num2)")
}

// логические операции

let isSunny = false
let isWarm = false

if isSunny || isWarm {
    print("Good day")
} else {
    print("Bad day")
}

// && true - true = true, true - false = false, false - true = false
// || true - true = true, true - false = true, false - false = false

if (1 == 1) && (2 != 3) {
    print("Good day")
} else {
    print("Bad day")
}

let isWeekend = true
let isHoliday = false

if !isWeekend {
    print("Не выходной")
} else {
    print("Выходной")
}

