// Playground - noun: a place where people can play

import Cocoa

//let a: Int8 = 5

Int8.max

UInt8.max

Int.max

var  a: UInt8 = 0b10100100
let b: UInt8 = 0b00000110

a + b

a << 0

a = a << 1

-5 >> 1

//& умножение
28 & 21

//| сложение

28 | 21

// инверсия
~28

func bitString(byte: UInt8) -> String {
    
    var number = byte
    
    var string = ""
    
    for i in 0..8 {
        
        string = String(number & 0b00000001) + string
        
        number = number >> 1
        
    }
    
    return string
}

bitString(0b00000110)
bitString(6)


