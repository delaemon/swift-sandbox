//: Playground - noun: a place where people can play
import UIKit
import XCPlayground

func gcd(a:Int, b:Int) -> Int {
    if b == 0 {
        return a
    }
    return gcd(a: b, b: a % b)
}

gcd(a: 999, b: 300)
