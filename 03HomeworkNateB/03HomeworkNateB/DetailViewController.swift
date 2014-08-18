//
//  DetailViewController.swift
//  03HomeworkNateB
//
//  Created by Nathan Birkholz on 8/12/14.
//  Copyright (c) 2014 Nate Birkholz. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var selectedPerson : Person?
    
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.firstNameField.text = self.selectedPerson?.firstName
        self.lastNameField.text = self.selectedPerson?.lastName
        
    }
    
//    http://makeapppie.com/2014/07/05/using-delegates-and-segues-part-2-the-pizza-demo-app/
    


    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        self.selectedPerson?.firstName = self.firstNameField.text
        self.selectedPerson?.lastName = self.lastNameField.text
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    

}
