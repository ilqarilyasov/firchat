//
//  ChatRoomsTableViewController.swift
//  FirChat
//
//  Created by Ilgar Ilyasov on 3/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class ChatRoomsTableViewController: UITableViewController {
    
    let controller = ChatController()
    let newRoom = Notification.Name(rawValue: "NewRoom")
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.addObserver(self, selector: #selector(reload), name: newRoom, object: nil)
    }
    
    @objc
    func reload() {
        tableView.reloadData()
    }
    
    @IBAction func addChatRoom(_ sender: Any) {
        let alert = UIAlertController(title: "Add new chat room", message: nil, preferredStyle: .alert)
        var alertTextField: UITextField!
        alert.addTextField { (textField) in
            textField.placeholder = "Room name"
            alertTextField = textField
        }
        
        let dismiss = UIAlertAction(title: "Dismiss", style: .cancel, handler: nil)
        let add = UIAlertAction(title: "Add", style: .default) { (action) in
            if let text = alertTextField.text {
                self.controller.createChatRoom(with: text.localizedCapitalized)
                NotificationCenter.default.post(name: self.newRoom, object: nil)
            }
        }
        
        alert.addAction(dismiss)
        alert.addAction(add)
        
        present(alert, animated: true, completion: nil)
    }
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return controller.chatRooms.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ChatRoomCell", for: indexPath)
        
        let room = controller.chatRooms[indexPath.row]
        cell.textLabel?.text = room.title
        
        return cell
    }


    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowRoom" {
            
        }
    }

}
