//
//  main.swift
//  Lesson-20.11.2023
//
//  Created by Shamil Aglarov on 20.11.2023.
//Lesson-3

import Foundation

//1. Цикл While - Пока условие true-(истина) -> Делай

//var age = 7
//
//while age < 7 {
//    print("Олег еще в школу не ходит, ему только \(age) лет")
//    age += 1
//}
//print("Олег пошел в школу")
//
//repeat {
//    print("Олег еще в школу не ходит, ему только \(age) лет")
//    age += 1
//} while age > 7

//1 * 2 * 3 * 4 = // nFACtorial

// N = 4
// result = 1, 1, 2, 6, 24
// i = 1, 2, 3, 4, 5

// Опционал

//var ageSon: String? = nil
//var ageFather: String = "20"
//
//// развертывание опционала ??
//let result = "\(ageSon ?? "0") + \(ageFather)"
//
//let char = "a"
//
//print(result)

//var ageSon: String? = "50"
//var ageFather: String = "20"

// развертывание опционала через if let
//
//if let newAgeSon = ageSon {
//    print(newAgeSon)
//    
//} else {
//    print("dfvdsfvs")
//}
//
//func testing(ageSon: String?)  {
//    
////    if let newAgeSon = ageSon {
////        print(newAgeSon)
////    } else {
////        print("dfvdsfvs")
////    }
//    
////    guard let ageSon = ageSon else {
////        print("ageSon = nil найди меня в 64 строке")
////        return
////    }
////    
////    print(ageSon)
//}
//
//testing(ageSon: nil)

//
//func getUser() -> String? {
//    return Bool.random() ? "Alex" : nil
//}
//func getEmail() -> String? {
//    return Bool.random() ? "alex@mail.ru" : nil
//}
//
//func registerUser(userName: String? = nil, email: String? = nil) {
//    print("Регистрация пользователя")
//    
//    if let userName = userName {
//        print("UserName: \(userName)")
//    } else {
//        print("Пользователь не предоставлен")
//    }
//    
//    guard let userMail = email else {
//        print("Почта пользователя не предоставлена")
//        return
//    }
//    print("UserEmail: \(userMail)")
//}
//
//registerUser(userName: getUser(), email: getEmail())
//
//let age = 1000
//
//switch age {
//case 0..<13:
//    print("ребенок")
//case 13..<20:
//    print("Подросток")
//case 20..<60:
//    print("Взрослый")
//default:
//    print("Некорректный возраст")
//}
//let array100number: Array<Int> = [10, 20, 50]
//var array100number = Array<Int>()

var array100number = Array<Int>()

for _ in 0..<20 {
    array100number.append(Int.random(in: 10..<50))
}
print()

for (index, value) in array100number.enumerated().reversed() {
    print(index, terminator: " index ")
    print(value, terminator: " value ")
    if value % 2 == 0 || value  % 3 == 0 {
        array100number.remove(at: index)
    }
}

//index  0  1  2  3   4
//value 10 20 30 40  50

//index  0  1  2   3
//value 10 30 40  50

//remove(index: 3)
