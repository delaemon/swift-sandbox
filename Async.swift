import UIKit
import XCPlayground

XCPSetExecutionShouldContinueIndefinitely(true)
print("Start")
let time1 = dispatch_time(DISPATCH_TIME_NOW, Int64(1 * NSEC_PER_SEC))
let time2 = dispatch_time(DISPATCH_TIME_NOW, Int64(2 * NSEC_PER_SEC))
let time3 = dispatch_time(DISPATCH_TIME_NOW, Int64(3 * NSEC_PER_SEC))
dispatch_after(time1, dispatch_get_main_queue(), { ()->Void in
    print("1sec")
})
dispatch_after(time2, dispatch_get_main_queue(), { ()->Void in
    print("2sec")
});
dispatch_after(time3, dispatch_get_main_queue(), { ()->Void in
    print("3sec")
});
