//: Playground - noun: a place where people can play
import UIKit
import XCPlayground

class Obj {
    var id:Int
    var name:String
    var msg:String = ""

    init(i:Int, n:String) {
        self.id = i
        self.name = n
    }
}

class User:Obj {
    override init(i:Int, n:String){
        super.init(i:i, n:n)
    }

    func Say (msg:String) {
        print (msg + " by " + self.name)
        log(msg)
    }

    private func log(msg:String) {
        self.msg = msg
    }
}

var u = User.init(i:1, n:"taro")
print(u.id)
u.Say("hello")
