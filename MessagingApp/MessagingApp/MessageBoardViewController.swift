//
//  MessageBoardViewController.swift
//  MessagingApp
//
//  Created by Austin Vigo on 7/29/19.
//  Copyright © 2019 austin-keith. All rights reserved.
//

import UIKit

class MessageBoardViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var messagesTableView: UITableView!
    
    var messagesRecieved:[String] = []
    func getAllMessages(){
        messagesRecieved.append("austin.keith.vigo@gmail.com")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messagesRecieved.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = messagesRecieved[indexPath.row]
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        messagesTableView.delegate = self
        messagesTableView.dataSource = self
        getAllMessages()
        
    }
    


}
