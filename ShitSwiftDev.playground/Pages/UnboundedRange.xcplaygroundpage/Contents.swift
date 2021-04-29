import Foundation

// https://twitter.com/PAl_l_E/status/1364515731891777537
// https://github.com/apple/swift/blob/main/stdlib/public/core/Range.swift#L873

public enum UnboundedRange_ {
  public static postfix func ... (_: UnboundedRange_) -> () {}
}

public typealias UnboundedRange = (UnboundedRange_)->()

extension Collection {
  public subscript<R: RangeExpression>(r: R) -> SubSequence where R.Bound == Index {
    return self[r.relative(to: self)]
  }
  
  public subscript(x: UnboundedRange) -> SubSequence {
    return self[startIndex...]
  }
}

let array = ["Foo", "Bar", "Baz"]

print(array[...])
