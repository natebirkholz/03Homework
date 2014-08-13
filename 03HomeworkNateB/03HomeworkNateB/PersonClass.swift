//
//  PersonClass.swift
//  03HomeworkNateB
//
//  Created by Nathan Birkholz on 8/12/14.
//  Copyright (c) 2014 Nate Birkholz. All rights reserved.
//

import Foundation
import UIKit

class Person {
    var firstName : String
    var lastName : String
    var personImage : UIImage?
    
    init (firstName : String, lastName : String) {
        self.firstName = firstName
        self.lastName = lastName
        
        println("initialized with \(firstName, lastName)")
    }
    
    func fullName() -> String {
        var fullNameString : String = firstName + " " + lastName
        print("\(fullNameString) is the full name, ")
        
        return firstName + " " + lastName
        
    }
    
    
}