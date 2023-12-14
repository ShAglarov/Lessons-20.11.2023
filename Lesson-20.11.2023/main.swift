//
//  main.swift
//  Lesson-20.11.2023
//
//  Created by Shamil Aglarov on 20.11.2023.
//

import Foundation

//------------Еще разница между struct и class-----------------------
/*
 1_Ссылочный тип vs Значимый тип:
 *_ Классы являются ссылочными типами. Это означает, что когда вы присваиваете экземпляр
    класса переменной или константе, вы фактически присваиваете ссылку на этот объект.
 *_ Структуры являются значимыми типами. Когда вы присваиваете экземпляр структуры
    переменной или константе, создается копия этой структуры.
 2_Наследование:
 *_ Классы могут наследовать свойства и методы от других классов.
 *_ Структуры не поддерживают наследование.
 3_Деинициализаторы:
 *_ Классы могут иметь деинициализаторы, которые выполняют определенный код перед тем,
    как экземпляр удаляется из памяти.
 *_ Структуры не имеют деинициализаторов.
 4_Идентичность и равенство:
 *_ У классов есть понятие "идентичности".
    Вы можете проверить, указывают ли две переменные на один и тот же объект с помощью операторов "===" и "!==".
 *_ Структуры не имеют понятия идентичности. Они сравниваются только на равенство.
 5_Возможность изменения свойств:
 *_ Для классов, если свойство объявлено как var, то оно может быть изменено из любого экземпляра,
    даже если этот экземпляр объявлен как let.
 *_ Для структур, если экземпляр объявлен как let, то все его свойства становятся неизменяемыми,
    независимо от того, были ли свойства объявлены как var или let.
 6_ARC (Automatic Reference Counting):
 *_ Классы поддерживают автоматическое подсчета ссылок (ARC), которое управляет жизненным циклом экземпляра.
    Это может привести к утечкам памяти, если не управлять сильными циклическими ссылками (например, с использованием weak или unowned).
 *_ Структуры не участвуют в ARC, так как они копируются при передаче и не используют ссылочный подсчет.
 7_Синтаксис инициализации:
 *_ Структуры автоматически получают инициализатор "по членам", который позволяет инициализировать каждое свойство структуры.
 *_ Классам такой инициализатор предоставляется автоматически только в отсутствие пользовательских инициализаторов.
 8_Мутация Методов:
 *_ В структурах, методы, которые изменяют свойства структуры, должны быть помечены ключевым словом mutating.
   Это делает очевидным, что метод изменяет структуру.
 *_ В классах такой необходимости нет, так как любой метод может изменить свойства класса.
 9_Type Casting:
 *_ Классы поддерживают приведение типов (type casting) с использованием as?, as! и is.
 *_ Структуры не поддерживают приведение типов в иерархии наследования, так как у них нет наследования.
 8_Extensions:
 И классы, и структуры могут быть расширены с помощью extension, но если вы добавите
 новый инициализатор в расширении структуры, он не сможет изменять свойства,
 объявленные как let, если у них уже есть значения по умолчанию.
 9_Ключевое слово self:
 В Swift ключевое слово self используется для обозначения текущего экземпляра объекта, структуры или перечисления.
 Однако его использование и поведение слегка различаются в контексте классов и структур.
 *_ В классах: self обычно используется для различия свойств и методов класса от
    параметров функций или для ссылки на текущий экземпляр класса. 

 *_ В структурах: Как и в классах, self указывает на текущий экземпляр структуры.
    Однако при работе с методами, которые модифицируют структуру (отмечены как mutating),
    self представляет измененный экземпляр, который заменяет исходный экземпляр после завершения метода.
 */

 //Протоколы - полиморфное поведение

//class Fighter {
//    var ability: SuperAbility?
//    
//    let boxer = Boxer()
//    let wrestler = Wrestler()
//}
//
//class Boxer: SuperAbility {
//    func superAttack(_ name: String) {
//        print("\(name) бьет хук")
//    }
//}
//
//class Wrestler: SuperAbility {
//    func superAttack(_ name: String) {
//        print("\(name) делает бросок")
//    }
//}
//
//let fighter = Fighter()
//
//fighter.ability = Boxer()
//
//fighter.ability?.superAttack("dfvdf")

//fighter.ability?.superAttack("Alex")
//fighter.ability = Wrestler()
//fighter.ability?.superAttack("Maxim")


//protocol LetterBelonging {
//    func writeText(_ text: String)
//}
//
//class Hand {
//    var letterBelonging: LetterBelonging?
//    
//    func writeText(_ text: String) {
//        letterBelonging?.writeText("\(text)")
//    }
//}
//
//class RedPen: LetterBelonging {
//    func writeText(_ text: String) {
//        print("Пишем красной пастой: \(text)")
//    }
//}
//
//class BluePen: LetterBelonging {
//    func writeText(_ text: String) {
//        print("Пишем синей пастой: \(text)")
//    }
//}
//
//class Marker: LetterBelonging {
//    func writeText(_ text: String) {
//        print("Пишем маркером: \(text)")
//    }
//}
//
//let hand = Hand()
//
//hand.letterBelonging = RedPen()
//hand.writeText("меня зовут Шамиль")
//hand.letterBelonging = Marker()
//hand.writeText("меня зовут Шамиль")

//protocol Speed {
//    var speed: Int { get }
//    var brend: String { get }
//}
//
//class Transport {
//    var transport: Speed?
//    
//    func checkSpeed() {
//        print("Скорость автомобиля \(transport?.brend ?? "") = \(transport?.speed ?? 0)")
//    }
//}
//
//class BMW: Speed {
//    let brend: String = "BMW"
//    var speed: Int {
//        100
//    }
//    
//    
//}
//
//class Mersedes: Speed {
//    let brend: String = "Mersedes"
//    var speed: Int {
//        98
//    }
//}
//
//let car = Transport()
//
//car.transport = BMW()
//car.checkSpeed()
//
//car.transport = Mersedes()
//car.checkSpeed()

class Fighter {
    var name: String = ""
    
    var typeFighter: String {
        "Иван"
    }

    var isDead: Bool = false {
        didSet {
            if isDead {
                print("Боец \(name) погиб")
            }
        }
    }
    
    var weapon: String = ""
    
    private var _health: Int = 100
    
    var health: Int {
        get {
            return _health
        }
        set {
            _health = _health - 10
            if _health <= 0 {
                isDead.toggle()
            }
        }
    }
    
    func kick(damage: Int) -> Int {
        let damage = damage + Int.random(in: 1...100)
        return damage
    }
    
}

class Warrior: Fighter {
    
    let randamazier = Int.random(in: 1...5)
     
    if randamazier == 3 {
        useUltimateAbility(superKick: kick(damage: Int.random(in: 30..<1000)))
    }
    
    func useUltimateAbility(superKick: Int) {
        kick(damage: superKick)
        print("\(name) разозлился и нанес противнику супер удар")
    }
}

class Mag: Fighter {
    func useUltimateAbility() {
        
    }
}



let fighter = Fighter()

fighter.health = 10
print(fighter.health)
fighter.health = 10
print(fighter.health)
fighter.health = 10
print(fighter.health)
fighter.health = 10
print(fighter.health)
fighter.health = 10
print(fighter.health)
fighter.health = 10
print(fighter.health)
fighter.health = 10
print(fighter.health)
fighter.health = 10
print(fighter.health)
fighter.health = 10
print(fighter.health)
fighter.health = 10
print(fighter.health)
fighter.health = 10
print(fighter.health)
fighter.health = 10
print(fighter.health)
fighter.health = 10
print(fighter.health)
fighter.health = 10
print(fighter.health)
fighter.health = 10
print(fighter.health)

