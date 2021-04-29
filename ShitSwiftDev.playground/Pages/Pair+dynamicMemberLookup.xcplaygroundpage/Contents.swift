import Foundation

// https://twitter.com/ShitSwiftDev/status/1362350864342646784

@dynamicMemberLookup
struct Pair<T> {
    fileprivate let tuple: (T, T)
    init(_ first: T, _ second: T) {
        tuple = (first, second)
    }
    subscript(dynamicMember keyPath: KeyPath<(T, T), T>) -> T {
        tuple[keyPath: keyPath]
    }
}

let pair = Pair("Foo", "Bar")
print(pair.0)
print(pair.1)
    
