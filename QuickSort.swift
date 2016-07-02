//: Playground - noun: a place where people can play
import UIKit
import XCPlayground

func quicksort<T>(inout array: [T], left:Int, right:Int) {
    if (left < right) {
        let pivot = median3(data[left], y: data[(left + right) / 2], z: data[right])
        var i = left
        var j = right
        while true {
            while true {
                if data[i] < pivot {
                    i += 1
                } else {
                    break
                }
            }
            while true {
                if pivot < data[j] {
                    j -= 1
                } else {
                    break
                }
            }
            if i >= j {
                break
            }
            let tmp = data[i]
            data[i] = data[j]
            data[j] = tmp
        }
        quicksort(&data, left: left, right: i - 1)
        quicksort(&data, left: j + 1, right: right)

    }
}


func median3(x:Int, y:Int, z:Int) -> Int {
    if x < y {
        if z < x {
            return x
        } else if(y < z) {
            return y
        } else {
            return z
        }
    } else {
        if x < z {
            return x
        } else if(z < y) {
            return y
        } else {
            return z
        }
    }
}

func shuffle<S: SequenceType>(source: S) -> [S.Generator.Element] {
    var array = Array<S.Generator.Element>(source)
    for index in 0..<array.count {
        let newIndex = Int(arc4random_uniform(UInt32(array.count - index))) + index
        if index != newIndex {
            swap(&array[index], &array[newIndex])
        }
    }
    return array
}

func dump<T>(inout array: [T]) {
    for i in data {
        print(i)
    }
}

var data = shuffle(1...10)
dump(data)
quicksort(&data, left: 0, right: data.count-1)
dump(data)
