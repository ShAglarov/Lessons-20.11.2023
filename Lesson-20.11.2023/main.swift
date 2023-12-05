//
//  main.swift
//  Lesson-20.11.2023
//
//  Created by Shamil Aglarov on 20.11.2023.
//

import Foundation

//enum CompossPoint {
//    case north
//    case south
//    case east
//    case west
//}
//
//let direction = CompossPoint.east
//
//print(direction)

//enum DayOfWeek: Int {
//    case monday = 0
//    case tuesday
//    case wensday
//    case thursday
//    case friday
//    case satuday
//    case sunday
//
//    var translate: String {
//        switch self {
//        case .monday:
//            return "Понедельник"
//        case .tuesday:
//            return "Вторник"
//        case .wensday:
//            return "Среда"
//        case .thursday:
//            return "Четверг"
//        case .friday:
//            return "Пятница"
//        case .satuday:
//            return "Суббота"
//        case .sunday:
//            return "Воскресенье"
//        }
//    }
//
//    var weekend: Bool {
//        switch self {
//        case .satuday:
//            return true
//        case .sunday:
//            return true
//        default:
//            return false
//        }
//    }
//}
//
//let today = DayOfWeek.monday
//
//print("Сегодня \(today.translate) \(today.weekend ? "Выходно" : "Будний") день \(DayOfWeek(rawValue: 3)?.translate ?? "такого дня недели не существует")")

// upc - (1.1.1.1)
// case - (sflkjsnfglkjsnfgfgsl)



//enum Barcode {
//    case upc(Int, Int, Int, Int)
//    case qrCode(String)
//
//    var aboutBarcode: String {
//        switch self {
//        case .upc(let numberSystem, let manufacturer, let product, let check):
//            return "UPC: \(numberSystem).\(manufacturer).\(product).\(check)"
//        case .qrCode(let productCode):
//            return "QR code: \(productCode)"
//        }
//    }
//}
//
//var productBarcode = Barcode.qrCode("3423423").aboutBarcode
//print(productBarcode)

//enum MatchOperations {
//    case add, subtract, multiply, divide
//
//    func copute(lhs: Double, rhs: Double) -> Double {
//        switch self {
//        case .add:
//            lhs + rhs
//        case .subtract:
//            lhs + rhs
//        case .multiply:
//            lhs + rhs
//        case .divide:
//            lhs + rhs
//        }
//    }
//}
//
//let addition = MatchOperations.multiply
//
//let result = addition.copute(lhs: 25, rhs: 25)
//print(result)

//func menu() {
//    print("Для выхода из программы нажмине 0")
//    guard let input = readLine() else { return }
//    switch input {
//    case "0": print("Вы успешно вышли")
//    default: menu()
//    }
//}
//
//menu()

//indirect enum ArithmeticExpression {
//    case number(Int)
//    case addition(ArithmeticExpression, ArithmeticExpression)
//    case multiplication(ArithmeticExpression, ArithmeticExpression)
//
//    var result: Int {
//        switch self {
//        case .number(let value):
//            return value
//        case .addition(let left, let right):
//            return left.result + right.result
//        case .multiplication(let left, let right):
//            return left.result * right.result
//        }
//    }
//}
//
//let five = ArithmeticExpression.number(5)
//let four = ArithmeticExpression.number(4)
//
//let sum = ArithmeticExpression.addition(five, four)
//
//print(sum.result)
//

// имитация запроса в сеть
// возможные сбои - сервер не отвечает, отсутствуует подключение к интернету
// данные получены успешно

enum ResultRequest {
    case success(String)
    case failure(String)
}

var resultData: [Int : String] = [
                                   1: "Данные получены",
                                   2 : "Отсутствуует подключение к интернету",
                                   3 : "Сервер не отвечает"
                                 ]
let resultRequestData = resultData.randomElement()

func fetchData(for request: String) -> ResultRequest {
    guard let requestData = resultRequestData else { return ResultRequest.failure("запрос не отправлен")}
    
    for (key, value) in [requestData] {
        switch key {
        case 1: 
            return ResultRequest.success(value)
        case 2:
            return ResultRequest.failure(value)
        case 3:
            return ResultRequest.failure(value)
        default:
            return ResultRequest.failure("Ошибка \(resultData[key] ?? "")")
        }
    }
    return .failure("некоторый fallback-кейс")
}

// Выполняем запрос

let result2 = fetchData(for: "Freeman")

switch result2 {
case .success(let data):
    print("Data: \(data)")
case .failure(let errorMassage):
    print("Error: \(errorMassage)")
}
