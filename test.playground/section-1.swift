// Playground - noun: a place where people can play

import Cocoa

var numbers = [20, 19, 7, 12]

numbers.map({
    (number: Int) -> Int in
    let result = 3 * number
    return result
    })

sort([1, 5, 3, 12, 2]) { $0 > $1 }

enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.toRaw())
        }
    }
}
let ace = Rank.Ace
let aceRawValue = ace.toRaw()