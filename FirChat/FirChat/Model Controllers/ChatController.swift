//
//  ChatController.swift
//  FirChat
//
//  Created by Ilgar Ilyasov on 3/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class ChatController {
    private(set) var chatRooms = [ChatRoom]()
    
    // Create chat room in Firebase
    func createChatRoom(with title: String) {
        let chatRoom = ChatRoom(title: title, messages: [])
        chatRooms.append(chatRoom)
    }
    
    // Fetch chat rooms from Firebase
    
    // Create a message in a chat room in Firebase
    
    // Fetch messages in a chat room from Firebase
}
