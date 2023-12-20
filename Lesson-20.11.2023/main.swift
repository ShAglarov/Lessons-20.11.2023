//
//  main.swift
//  Lesson-20.11.2023
//
//  Created by Shamil Aglarov on 20.11.2023.
//

import Foundation

//class Fighter {
//    
//    var name: String
//    var typeFighter: String {
//        return "какой то боец"
//    }
//    var weapon: Weapon
//    
//    private var _hp: Int = 0
//    
//    var hp: Int {
//        get { return _hp }
//        set {
//            _hp = newValue
//        }
//    }
//    var strenght: Int {
//        return 1
//    }
//    
//    init(name: String, hp: Int, weapon: Weapon) {
//        self.name = name
//        self.weapon = weapon
//        self.hp = hp
//    }
//    
//    func reduseDamage() {
//        let damage = strenght * 10
//        print("нанес \(damage) урона")
//        _hp = max(0, _hp - damage)
//    }
//    
//    func attack() {
//        print("\(typeFighter), \(name), ударил и", terminator: " ")
//    }
//    func balanceHP() {
//        print("Осталось жизней \(_hp)")
//    }
//    func isDead() -> Bool {
//        _hp <= 0 ? true : false
//    }
//    deinit {
//        print("\(typeFighter) класс уничтожился")
//    }
//}
//
//class Mag: Fighter {
//    
//    override var typeFighter: String {
//        return "Mag"
//    }
//    
//    override var strenght: Int {
//        50
//    }
//    
//    override func attack() {
//        if isDead() {
//            print("\(name) мертв")
//        } else {
//            super.attack()
//            super.reduseDamage()
//        }
//    }
//    
//    init?(name: String, weapon: Weapon) {
//        super.init(name: name, hp: 100, weapon: weapon)
//    }
//}
//
//class Weapon {
//    let nameWeapon: String
//    
//    weak var owner: Fighter?
//
//    init(nameWeapon: String, owner: Fighter? = nil) {
//        self.nameWeapon = nameWeapon
//        self.owner = owner
//    }
//}
//
//class Game {
//    
//    func startGame() {
//        
//        var sword = Weapon(nameWeapon: "Мечь")
//        
//        let mag = Mag(name: "Alex", weapon: sword)
//        
//        sword.owner = mag
//        
//        print("Боец \(sword.owner?.name) держит в руках \(sword.nameWeapon)")
//    }
//    
//}
//
//let game = Game()
//
//game.startGame()
//

//var x = "10"
//var y = "5"
//
//func swap2<T>(_ a: inout T, _ b: inout T) {
//    let temp = a
//    a = b
//    b = temp
//}
//
//swap2(&x, &y)
//
//print("x = \(x)")
//print("y = \(y)")

// Протокол сравнивания 2-х объектов - Equatable

//class Weapon {
//    
//    static func == (lhs: Weapon, rhs: Weapon) -> Bool {
//        lhs.name == rhs.name
//    }
//    
//    var name: String
//    init(name: String) {
//        self.name = name
//    }
//}
//
//func findIndex<T: Equatable>(of value: T, in array: [T]) -> T {
//    for (index, _) in array.enumerated() {
//        if array[index+1] == array[index] {
//            return Weapon(name: "мечь") as! T
//        }
//    }
//    return Weapon(name: "Топор") as! T
//}
//
//let weapon = Weapon(name: "Топор")
//
//let result = findIndex(of: weapon, in: [weapon, weapon, weapon])
//
//print(result)

protocol RaceTrack {
    var model: String { get set }
    func maxSpeed() -> Int
    var spoiler: String { get }
}

protocol SpeedTrack {
    var model: String { get set }
    func maxSpeed() -> Int
}
protocol TrankProtocol {
    var model: String { get set }
    func unloading()
}

class BMW: SpeedTrack, RaceTrack {
    var spoiler: String {
        "bmw spoiler"
    }
    
    
    func maxSpeed() -> Int {
        350
    }
    
    var model: String = "BMV"
}

class Mersedes: SpeedTrack {
    
    func maxSpeed() -> Int {
        350
    }
    
    var model: String = "Mersedes"
}

class RaceCar: RaceTrack {
    var spoiler: String {
        "Спойлер"
    }
    
    
    func maxSpeed() -> Int {
        350
    }
    
    var model: String = "Mersedes"
}

class TrankCar: TrankProtocol {
    func unloading() {
        print("Выгрузка")
    }
    
    var model: String = "TrankCar"
}

func race<T: SpeedTrack & RaceTrack>(auto: T) {
    print("\(auto.model) начал гонку")
}

let trankCar = TrankCar()
let bmv = BMW()
let mersedes = Mersedes()
let raceCar = RaceCar()

race(auto: bmv)
