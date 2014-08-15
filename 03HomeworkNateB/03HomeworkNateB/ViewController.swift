//
//  ViewController.swift
//  03HomeworkNateB
//
//  Created by Nathan Birkholz on 8/12/14.
//  Copyright (c) 2014 Nate Birkholz. All rights reserved.
//

import UIKit



class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate/*, EditNameDelegate*/ {
    
    @IBOutlet weak var tableViewMain: UITableView!
    var peopleArray = [Person]()
//    var selectedPerson = [Person]()
//    var firstNameEdit = String()
//    var lastNameEdit = String()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableViewMain.dataSource = self
        self.tableViewMain.delegate = self
        
        self.createPeopleArray()
        
    }

    func createPeopleArray() {
        
        if peopleArray.isEmpty {

        var nateB = Person(firstName: "Nate", lastName: "Birkholz")
        var matthewB = Person(firstName: "Matthew", lastName: "Brightbill")
        var jeffC = Person(firstName: "Jeff", lastName: "Chavez")
        var johnC = Person(firstName: "John", lastName: "Clem")
        var christieF = Person(firstName: "Christie", lastName: "Ferderer")
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
        
        self.peopleArray.append(nateB)
        self.peopleArray.append(matthewB)
        self.peopleArray.append(jeffC)
        self.peopleArray.append(johnC)
        self.peopleArray.append(christieF)
        self.peopleArray.append(davidF)
        self.peopleArray.append(adrianG)
        self.peopleArray.append(jakeH)
        self.peopleArray.append(bradJ)
        self.peopleArray.append(shamsK)
        self.peopleArray.append(cameronK)
        self.peopleArray.append(koriK)
        self.peopleArray.append(parkerL)
        self.peopleArray.append(nathanM)
        self.peopleArray.append(caseyM)
        self.peopleArray.append(brendanM)
        self.peopleArray.append(brianM)
        self.peopleArray.append(markM)
        self.peopleArray.append(rowanN)
        self.peopleArray.append(kevinP)
        self.peopleArray.append(willR)
        self.peopleArray.append(heatherT)
        self.peopleArray.append(tuanV)
        self.peopleArray.append(zackW)
        self.peopleArray.append(saraW)
        self.peopleArray.append(hiongyaoZ)
        
        println("\(peopleArray)")
        
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
    }

    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        return self.peopleArray.count
    }
    
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        let cell = tableViewMain.dequeueReusableCellWithIdentifier("CellMain", forIndexPath: indexPath) as UITableViewCell
        
        var personForRow = self.peopleArray[indexPath.row]
        cell.textLabel.text = personForRow.fullName()
        
        return cell
        
    }

    

    
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if segue.identifier == "detailVCSegue" {
            var selectedPerson = self.peopleArray[self.tableViewMain.indexPathForSelectedRow().row]
            
            let vc = segue.destinationViewController as DetailViewController
            
            vc.selectedPerson = selectedPerson
//            vc.firstNameEdit = firstNameEdit
//            vc.lastNameEdit = lastNameEdit
        }
    }

    
//    func func editNameDidFinish(controller: DetailViewController, firstNameBack: String, lastNameBack: String) {
//        pizza.pizzaType = type
//        pizza.pizzaPricePerInSq[pizza.pizzaType] = price
//        controller.navigationController.popViewControllerAnimated(true)
//        displayPizza()
//    }
}

