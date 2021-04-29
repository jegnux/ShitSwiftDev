import Foundation

// https://twitter.com/cardosodev/status/1378048756579500034

enum Functions {
    case helloWorld
    case fizzBuzz(number: Int)
    
    func callAsFunction() {
        switch self {
        case .helloWorld:
            print("Hello World")
        case .fizzBuzz(let number):
            switch (number.isMultiple(of: 3), number.isMultiple(of: 5)) {
            case (true, false):
                print("Fizz")
            case (false, true):
                print("Buzz")
            case (true, true):
                print("FizzBuzz")
            case (false, false):
                print(number)
            }
        }
    }
}

Functions.helloWorld()
Functions.fizzBuzz(number: 15)()
