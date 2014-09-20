//
//  ContactDetails.swift
//  Unit3Lesson3-Contacts
//
//  Created by Rick Bowen on 9/10/14.
//  Copyright (c) 2014 Rick Bowen. All rights reserved.
//

import UIKit

class ContactDetails: UIViewController {

    @IBOutlet weak var contactNameLabel: UILabel!
    @IBOutlet weak var contactPhoneLabel: UILabel!
    
    var contactName = ""
    var contactPhone = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        contactNameLabel.text = contactName
        contactPhoneLabel.text = contactPhone
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
