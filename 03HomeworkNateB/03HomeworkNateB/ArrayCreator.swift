//
//  ArrayCreator.swift
//  03HomeworkNateB
//
//  Created by Nathan Birkholz on 8/12/14.
//  Copyright (c) 2014 Nate Birkholz. All rights reserved.
//

import Foundation
import UIKit
//import CoreData

func fillPlist() -> NSMutableArray {
    
    println("\n- - - - - - - - - - - - - - - - - -\nStarting in Array Creator\n")
    
    var nateB = Person(firstName: "Nate", lastName: "Birkholz")
    var matthewB = Person(firstName: "Matthew", lastName: "Brightbill")
    var jeffC = Person(firstName: "Jeff", lastName: "Chavez")
    var johnC = Person(firstName: "John", lastName: "Clem")
    var christieF = Person(firstName: "Chrstie", lastName: "Ferderer")
    var davidF = Person(firstName: "David", lastName: "Fry")
    var adrianG = Person(firstName: "Adrian", lastName: "Gherle")
    var jakeH = Person(firstName: "Jake", lastName: "Hawken")
    var bradJ = Person(firstName: "Brad", lastName: "Johnson")
    var shamsK = Person(firstName: "Shams", lastName: "Kazi")
    var cameronK = Person(firstName: "Cameron", lastName: "Klein")
    var koriK = Person(firstName: "Kori", lastName: "Kolodziejczak")
    var parkerL = Person(firstName: "Parker", lastName: "Lewis")
    var nathanM = Person(firstName: "Nathan", lastName: "Ma")
    var caseyM = Person(firstName: "Casey", lastName: "MacPhee")
    var brendanM = Person(firstName: "Brendan", lastName: "McAleer")
    var brianM = Person(firstName: "Brian", lastName: "Mendez")
    var markM = Person(firstName: "Mark", lastName: "Morris")
    var rowanN = Person(firstName: "Rowan", lastName: "North")
    var kevinP = Person(firstName: "Kevin", lastName: "Pham")
    var willR = Person(firstName: "Will", lastName: "Richman")
    var heatherT = Person(firstName: "Heather", lastName: "Thueringer")
    var tuanV = Person(firstName: "Tuan", lastName: "Vu")
    var zackW = Person(firstName: "Zack", lastName: "Walkingstick")
    var saraW = Person(firstName: "Sara", lastName: "Wong")
    var hiongyaoZ = Person(firstName: "Hongyao", lastName: "Zhang")
    
    println()
    
    var myArray : NSMutableArray = [nateB.fullName(), matthewB.fullName(), jeffC.fullName(), johnC.fullName(), christieF.fullName(), davidF.fullName(), adrianG.fullName(), jakeH.fullName(), bradJ.fullName(), shamsK.fullName(), cameronK.fullName(), koriK.fullName(), parkerL.fullName(), nathanM.fullName(), caseyM.fullName(), brendanM.fullName(), brianM.fullName(), markM.fullName(), rowanN.fullName(), kevinP.fullName(), willR.fullName(), heatherT.fullName(), tuanV.fullName(), zackW.fullName(), saraW.fullName(), hiongyaoZ.fullName()]
    
    println("\n\nFinished in Array Creator\n- - - - - - - - - - - - - - - - - -\n")
    
    return myArray
}