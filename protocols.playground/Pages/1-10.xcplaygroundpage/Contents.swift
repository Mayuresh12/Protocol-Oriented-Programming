//: [Previous](@previous)

import Foundation

var str = "Hello, Protocol"

print(str)


protocol myProtocol {
    // defination of protocol
}

protocol FullName {
    // defination of protocol
    var firstName: String { get set }
    var lastName: String { get set }
}

struct name : FullName {
    var firstName = ""
    var lastName = ""
    
    func getFullName() -> String {
        return "\(firstName) \(lastName)"
    }
}

let myName = name(firstName: "Mac", lastName: "Rao")

print(myName.getFullName())

//: [Next](@next)
