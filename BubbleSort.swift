//: Playground - noun: a place where people can play
import UIKit
import XCPlayground

func bubblesort<T>(inout array: [T]) {
    var len = array.count - 1
    var i = 0
    while i < len {
        if (array[i] > array[i+1]) {
            var tmp = array[i]
            array[i] = array[i+1]
            array[i+1] = tmp
            i = 0
        } else {
            i += 1
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
bubblesort(&data)
dump(data)
