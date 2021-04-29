import Foundation

// https://twitter.com/ShitSwiftDev/status/1364510349840576512

infix operator ~

enum Wildcard { }
enum KeyWildcard { }

func * (lhs: Wildcard, rhs: Wildcard) {}
func ~ (lhs: KeyWildcard, rhs: KeyWildcard) {}

extension Dictionary {
    subscript(_: (KeyWildcard, KeyWildcard) -> Void) -> Keys {
        keys
    }
    subscript(_: (Wildcard, Wildcard) -> Void) -> Values {
        values
    }
}


let fruits = [
    "apples": 12,
    "oranges": 8,
    "bananas": 6,
]

print(fruits[~])
print(fruits[*])
