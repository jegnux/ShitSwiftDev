import UIKit

// https://twitter.com/ShitSwiftDev/status/1362698307793993728

final class MyView: UIView {
    
    func newOrigin_before(shouldInsetHorizontally: Bool) -> CGPoint {
        var origin = CGPoint(x: bounds.width * 0.25, y: bounds.height * 0.25)
        
        if shouldInsetHorizontally {
            origin.x += 8
        } else {
            origin.y += 8
        }
        return origin
    }
    
    func newOrigin_after(shouldInsetHorizontally: Bool) -> CGPoint {
        var origin = CGPoint(x: bounds.width * 0.25, y: bounds.height * 0.25)
        shouldInsetHorizontally ? (origin.x += 8) : (origin.y += 8)
        return origin
    }

    func newOrigin_better(shouldInsetHorizontally: Bool) -> CGPoint {
        CGPoint(
            x: bounds.width * 0.25 + (shouldInsetHorizontally ? 8 : 0),
            y: bounds.height * 0.25 + (shouldInsetHorizontally ? 0 : 8)
        )
    }

}

let view = MyView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
print(view.newOrigin_before(shouldInsetHorizontally: true))
print(view.newOrigin_after(shouldInsetHorizontally: true))
print(view.newOrigin_better(shouldInsetHorizontally: true))
