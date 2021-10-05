//
//  ViewController.swift
//  Protocol
//
//  Created by Mayuresh Rao on 10/5/21.
//

import UIKit

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

class ViewController: UIViewController, FullName {
    var firstName: String = "Mac"
    
    var lastName: String = "Rao"
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        let a = name(firstName: firstName, lastName: lastName)

        // Do any additional setup after loading the view.
        print(a.getFullName())
    }


}

