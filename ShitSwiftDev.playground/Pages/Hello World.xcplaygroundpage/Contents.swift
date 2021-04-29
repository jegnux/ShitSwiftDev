import Foundation

// https://twitter.com/ShitSwiftDev/status/1361970627243081728

protocol HelloWordPrintable {
    static func printHelloWorld()
}

extension HelloWordPrintable {
    static func printHelloWorld() {
        print("Hello World")
    }
}

extension Int: HelloWordPrintable {}

Int.printHelloWorld()
