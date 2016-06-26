import UIKit
import XCPlayground

var seed: UInt = 5
func lcg()->UInt {
    let a: UInt = 1664525
    let c: UInt = 1013904223
    let m: UInt = 4294967296
    seed = (a * seed + c) % m
    XCPCaptureValue("lcg", value: seed)
    return seed
}
for i in 0..<20 {
    lcg()
}
