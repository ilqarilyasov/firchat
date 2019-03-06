//
//  MessageViewController.swift
//  FirChat
//
//  Created by Ilgar Ilyasov on 3/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit
import MessageInputBar
import MessageKit

class MessageViewController: MessagesViewController, MessagesDataSource, MessagesLayoutDelegate, MessagesDisplayDelegate {
    
    var chatRoom: ChatRoom?

    override func viewDidLoad() {
        super.viewDidLoad()
        messagesCollectionView.messagesDataSource = self
        messagesCollectionView.messagesLayoutDelegate = self
        messagesCollectionView.messagesDisplayDelegate = self
    }
    
    func currentSender() -> Sender {
        if let user = UserDefaults.standard.object(forKey: "currentUser") {
            return Sender(id: UUID().uuidString, displayName: user as! String)
        } else {
            return Sender(id: UUID().uuidString, displayName: "Unknown")
        }
    }
    
    func messageForItem(at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> MessageType {
        if let message = chatRoom?.messages[indexPath.section] {
            return message
        } else {
            return Message(displayName: "Unknown", messageId: "-", sentDate: Date(), kind: .text("-"))
        }
    }
    
    func numberOfSections(in messagesCollectionView: MessagesCollectionView) -> Int {
        if let count = chatRoom?.messages.count {
            return count
        } else {
            return 1
        }
    }
}
