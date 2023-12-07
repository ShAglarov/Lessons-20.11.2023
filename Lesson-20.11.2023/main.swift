//
//  main.swift
//  Lesson-20.11.2023
//
//  Created by Shamil Aglarov on 20.11.2023.
//

import Foundation

// Структуры

//[Alexandr][Makedonskiy]

struct People {
    
    //свойства
    var name: String = "Adam"
    var lastName: String
    
    init?(data: String) {
        let components = data.split(separator: " ")
        
        if components.count != 2 { return nil }
        
        let nameComponent = components[0]
        let lastNameComponent = components[1]
        
        if age >= 100 { return nil }
        
        self.name = String(nameComponent)
        self.lastName = String(lastNameComponent)
    }
    
    var age: Int = 0 {
        willSet(newAge) {
            print("\(name) собирается отметить день рождение , ему будет \(newAge), а пока что ему \(age)")
        }
        didSet(oldAge) {
            print("\(name) отмечает день рождение, ему было \(oldAge) лет, сейчас ему \(age) лет")
        }
    }
    
    //методы
    func move() {
        
    }
}

extension People {
    var status: String {
        if age >= 18 {
            return "\(name) является взрослым человеком"
        } else {
            return "\(name) является ребенком"
        }
    }
    
    func printStatus() {
        print(status)
    }
}


let man = People(data: "Alexandr Makedonsky")

man?.printStatus()
