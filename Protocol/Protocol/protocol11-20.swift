//
//  protocol11-20.swift
//  Protocol
//
//  Created by Mayuresh Rao on 10/6/21.
//

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
        return "Fullname: \(firstName) \(lastName) age: \(age)"
    }
}

class protocol11_20: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
