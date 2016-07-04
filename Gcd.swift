//: Playground - noun: a place where people can play
import UIKit
import XCPlayground

func gcd<T>(a:Int, b:Int) Int {
    if b == 0 {
        return a
    }
    return gcd(b, a % b)
}

gcd(999, 300)
