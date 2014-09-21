//
//  ViewController.swift
//  Postcard
//
//  Created by Stéphane Tielemans on 18/09/14.
//  Copyright (c) 2014 Stéphane Tielemans. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterAMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // Code will evaluate when we press the button
        messageLabel.hidden = false
        nameLabel.hidden = false
        messageLabel.text = enterAMessageTextField.text
        nameLabel.text = enterNameTextField.text
        enterAMessageTextField.text = ""
        enterNameTextField.text = ""
        enterAMessageTextField.resignFirstResponder()
        enterNameTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        nameLabel.textColor = UIColor.blueColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
}

