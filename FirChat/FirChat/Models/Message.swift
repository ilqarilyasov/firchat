//
//  Message.swift
//  FirChat
//
//  Created by Ilgar Ilyasov on 3/5/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
import MessageKit

struct Message: MessageType {
    let senderId: String
    let displayName: String
    
    let sender: Sender
    let messageId: String
    let sentDate: Date
    let kind: MessageKind
    
    init(senderId: String = UUID().uuidString, displayName: String,
         messageId: String, sentDate: Date, kind: MessageKind) {
        self.messageId = messageId
        self.sentDate = sentDate
        self.kind = kind
        self.senderId = senderId
        self.displayName = displayName
        self.sender = Sender(id: senderId, displayName: displayName)
    }
}
