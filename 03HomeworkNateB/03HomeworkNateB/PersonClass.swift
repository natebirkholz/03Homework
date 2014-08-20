//
//  PersonClass.swift
//  03HomeworkNateB
//
//  Created by Nathan Birkholz on 8/12/14.
//  Copyright (c) 2014 Nate Birkholz. All rights reserved.
//

import Foundation
import UIKit

class Person : NSObject, NSCoding {
    var firstName : String
    var lastName : String
    var imageFor : UIImage?
    
    init (firstName : String, lastName : String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func encodeWithCoder(aCoder: NSCoder!) {
        aCoder.encodeObject(firstName, forKey:"firstName")
        aCoder.encodeObject(lastName, forKey:"lastName")
    }
    
    required init (coder aDecoder: NSCoder!) {
        self.firstName = aDecoder.decodeObjectForKey("firstName") as String
        self.lastName = aDecoder.decodeObjectForKey("lastName") as String
    }
    
    
    func fullName() -> String {
        var fullNameString : String = firstName + " " + lastName
        print("\(fullNameString) is the full name, ")
        
        return firstName + " " + lastName
        
    }
    
    
}