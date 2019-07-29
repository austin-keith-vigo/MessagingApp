//
//  ViewController.swift
//  MessagingApp
//
//  Created by Austin Vigo on 7/29/19.
//  Copyright © 2019 austin-keith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }



    @IBOutlet weak var emailAddrTextField: UITextField!
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        print(emailAddrTextField.text)
    }

}

