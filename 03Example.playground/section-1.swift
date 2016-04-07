// Playground - noun: a place where people can play

import Cocoa

sizeof(Int)

sizeof(Double)

sizeof(Float)

sizeof(Int8)

func bitToString(byte:Int) -> String {
    
    var number = byte
    
    var string = ""
    
    for i in 0..8 {
        
        string = " " + string
    
        for j in 0..8 {
            
            string = String(number & 0b00000001) + string
            
            number = number >> 1
            
        }
    }
    
    return string
}

bitToString(12312312545)


