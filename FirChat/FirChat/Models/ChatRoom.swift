//
//  ChatRoom.swift
//  FirChat
//
//  Created by Ilgar Ilyasov on 3/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class ChatRoom {
    
    let id: String
    let title: String
    let messages: [Message]
    
    init(id: String = UUID().uuidString, title: String, messages: [Message]) {
        self.id = id
        self.title = title
        self.messages = messages
    }
}
