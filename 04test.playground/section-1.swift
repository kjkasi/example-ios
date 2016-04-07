// Playground - noun: a place where people can play

import Cocoa

struct  Vector2D {
    var x = 0
    var y = 0
}

// -a, a++
// a + b
//
// a ? b : c
// = 

@infix func + (a: Vector2D, b: Vector2D) -> Vector2D {
    return Vector2D(x: a.x + b.x, y: a.y + b.y)
}

let v1 = Vector2D(x: 5, y: 6)
let v2 = Vector2D(x: 7, y: 2)

let v3 = Vector2D(x: v1.x + v2.x, y: v1.y + v2.y)

let v4 = v1 + v2

@prefix func  - (vector: Vector2D) -> Vector2D {
    return Vector2D(x: -vector.x, y: -vector.y )
}

let v5 = -v2

var v6 = v1

@assignment func += (inout a: Vector2D, b: Vector2D) {
    
    a.x += b.x
    a.y += b.y
}

v6 += v2

@prefix @assignment func ++ (inout a: Vector2D) -> Vector2D {
    ++a.x
    ++a.y
    return a
}

v6

let v7 = ++v6

@postfix @assignment func ++ (inout a: Vector2D) -> Vector2D {
    
    a.x++
    a.y++
    return a
}

let v8 = v6++

@infix func == (a: Vector2D, b: Vector2D) -> Bool {
    
    return (a.x == b.x) && (a.y == b.y)
}

v6
v8

v8 == v6
v1 == v3

operator prefix !! {}

@prefix func !! (a: Int) -> Bool {
    return a != 0
}

let a = 5

if !!a {
    a
}

