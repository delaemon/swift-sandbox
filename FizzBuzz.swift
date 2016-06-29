//: Playground - noun: a place where people can play
import UIKit
import XCPlayground

let fizz:(UInt8) -> (String)
fizz = {
    i -> String in
    if i % 3 == 0 {
        return "fizz"
    }
    return ""
}

let buzz:(UInt8) -> (String)
buzz = {
    i -> String in
    if i % 5 == 0 {
        return "buzz"
    }
    return ""
}

for i in  UInt8(0)..<UInt8(10) {
    print(String(format: "%@%@%02d", fizz(i), buzz(i), i))
}
