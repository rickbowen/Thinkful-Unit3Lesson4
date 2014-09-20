//
//  ContactInput.swift
//  Unit3Lesson3-Contacts
//
//  Created by Rick Bowen on 9/14/14.
//  Copyright (c) 2014 Rick Bowen. All rights reserved.
//

import UIKit

protocol dataUpdated:NSObjectProtocol {
    
    func didUpdateContact(senderClass: AnyObject, aName: String, aPhoneNumber: String)
    
}

class ContactInput: UIViewController, UITextFieldDelegate {
    
     //Properties
    var name = ""
    var phoneNumber = ""
    var delegate: dataUpdated?
    
    
    
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var phoneField: UITextField!
    
    
    func textFieldShouldReturn(textField:UITextField) -> Bool {
        
        textField.resignFirstResponder()
        
        if textField.tag == 1 {
            self.name = textField.text
        } else {
            self.phoneNumber = textField.text
        }
        
        println("Name: \(self.name), Phone: \(self.phoneNumber)")
        
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameField.delegate = self
        self.phoneField.delegate = self
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        
        if name != "" && phoneNumber != "" {
            self.delegate!.didUpdateContact(self, aName: self.name, aPhoneNumber: self.phoneNumber)

        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
