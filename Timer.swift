import UIKit
import XCPlayground

class ValueTimer: NSObject {
    var value: Int = 0
    var count: Int = 1
    func start() {
        XCPCaptureValue("start-value", value: value)
        NSTimer.scheduledTimerWithTimeInterval(0.2, target: self, selector: #selector(ValueTimer.timerFunction), userInfo: nil, repeats: true)
    }
    func timerFunction() {
        count += 1
        value += count
        XCPCaptureValue("progress", value: value)
    }
}
XCPSetExecutionShouldContinueIndefinitely(true)
var timer = ValueTimer()
timer.start()
