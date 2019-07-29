//
//  ViewController.swift
//  MessagingApp
//
//  Created by Austin Vigo on 7/29/19.
//  Copyright © 2019 austin-keith. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBOutlet weak var emailAddrTextField: UITextField!
    
    @IBAction func loginBtnPressed(_ sender: Any) {
        let emailAddr = "austin.keith.vigo@gmail.com"
        let password = "123456"
        
        Auth.auth().signIn(withEmail: emailAddr, password: password) { [weak self] user, error in
            guard let strongSelf = self else { return }
            if error == nil{
                print("in")
            }
            else{
                print("not in error: \(error)")
            }
        }
    }
    

}

