//
//  DetailViewController.swift
//  03HomeworkNateB
//
//  Created by Nathan Birkholz on 8/12/14.
//  Copyright (c) 2014 Nate Birkholz. All rights reserved.
//

import UIKit

//protocol EditNameDelegate{
//    func editNameDidFinish(controller:DetailViewController, type:String,price:Double)
//}

class DetailViewController: UIViewController {
    
    var namePass = [Person]()
    var firstNameEdit = ""
    var lastNameEdit = ""
    
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        firstNameField.text = firstNameEdit
        lastNameField.text = lastNameEdit
        
    }

    @IBAction func firstNameField(sender: UITextField) {
        let firstNameString = sender.text
        firstNameEdit = sender.text
        
        println("firstNameString is \(firstNameString)")
        println("firstNameEdit is \(firstNameEdit)")
    }
    
    @IBAction func lastNameField(sender: UITextField) {
        let lastNameString = sender.text
        lastNameEdit = sender.text
        
        println("lastNameString is \(lastNameString)")
        println("lastNameEdit is \(lastNameEdit)")
    }
    
    func displayFirstNameInText(){
        firstNameField.text = firstNameEdit
    }
    
    func displayLastNameInText(){
        lastNameField.text = lastNameEdit
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    

}
