import UIKit

protocol FullName2 {
    var firstName: String { get set }
    var lastName: String { get set }
}

protocol Person: FullName2 {
    var age: Int { get set }
}

struct Student: Person {
    var age: Int
    
    var firstName: String
    
    var lastName: String
    
    func getFullName() -> String {
        return "Fullname: \(firstName) \(lastName) \nAge: \(age)"
    }
}


let myName = Student(age: 12, firstName: "Mac", lastName: "Rao")

print(myName.getFullName())


let mayu = "Mayuresh"

if mayu is String {
    print("Mayuresh is a String type")
}

// associated types in protocol

protocol Queue {
    associatedtype QueueType
    mutating func addItems(Item : QueueType)
    mutating func getItem() -> QueueType?
    func count() -> Int
}

struct IntQueue: Queue{
    var items = [Int]()
    mutating func addItems(Item: Int) {
        items.append(Item)
    }
    mutating func getItem() -> Int? {
        if items.count > 0 {
            return items.remove(at: 0)
        } else {
            return nil
        }
    }
    func count() -> Int {
        return items.count
    }
    
}
var myQ = IntQueue()
myQ.addItems(Item: 12)
myQ.addItems(Item: 12)
myQ.addItems(Item: 12)
myQ.getItem()
print("Elements in the Queue are = \(myQ.count())")

myQ.addItems(Item: 12)

print("Elements in the Queue are = \(myQ.count())")
