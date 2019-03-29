import XCTest
@testable import FunctionalKit

class ReferenceTests: XCTestCase {
    func testNotifySingleListener() {
        let ref = Ref<Int>.init(0)
        let key = "key"
        let expected = 42

        expecting("listener is notified") { fulfill in
            ref.add(listener: key) { (x: Int) in
                x ==! expected
                fulfill()
            }

            ref.value = expected
        }
    }

    func testNotifyMultipleListeners() {
        let ref = Ref<Int>.init(0)
        let key1 = "key1"
        let key2 = "key2"
        let expected = 42

        expecting("listener1 is notified","listener2 is notified") { fulfill1, fulfill2 in
            ref.add(listener: key1) { (x: Int) in
                x ==! expected
                fulfill1()
            }

            ref.add(listener: key2) { (x: Int) in
                x ==! expected
                fulfill2()
            }

            ref.value = expected
        }
    }

    func testNotifySingleListenerRemovingOther() {
        let ref = Ref<Int>.init(0)
        let key1 = "key1"
        let key2 = "key2"
        let expected = 42

        expecting("listener2 is notified") { fulfill2 in
            ref.add(listener: key1) { (_: Int) in
                notExpected()
            }

            ref.add(listener: key2) { (x: Int) in
                x ==! expected
                fulfill2()
            }

            ref.remove(listener: key1)

            ref.value = expected
        }
    }

    func testNotifyNoListener() {
        let ref = Ref<Int>.init(0)
        let key1 = "key1"
        let key2 = "key2"
        let expected = 42

        expecting("listeners are not notified") { fulfill in
            ref.add(listener: key1) { (_: Int) in
                notExpected()
            }

            ref.add(listener: key2) { (_: Int) in
                notExpected()
            }

            ref.remove(listener: key1)
            ref.remove(listener: key2)

            ref.value = expected
            fulfill()
        }
    }

    static var allTests = [
        ("testNotifySingleListener", testNotifySingleListener),
        ("testNotifyMultipleListeners", testNotifyMultipleListeners),
        ("testNotifySingleListenerRemovingOther", testNotifySingleListenerRemovingOther),
        ("testNotifyNoListener", testNotifyNoListener),
        ]
}
