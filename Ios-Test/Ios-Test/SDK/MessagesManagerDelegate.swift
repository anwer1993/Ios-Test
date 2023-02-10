//
//  MessagesManagerDelegate.swift
//  Ios-Test
//
//  Created by Anwar Hajji on 10/02/2023.
//

import Foundation
import SocketIO


enum MessageStatus: String {
    case NewMessage = "new_message"
    case Delivered = "delivered"
    case Read = "read"
}


protocol MessageManagerDelegate {
    
    func didUpdateMessage(_message: Message, status: MessageStatus)
    func didReceiveNewMessage(_message: Message, status: MessageStatus)
    
}

class MessagingManager {
    
    public class var sharedInstance: MessagingManager {
        struct Static {
            static let sharedInstance = MessagingManager()
        }
        return Static.sharedInstance
    }
    
    func setUpdateMessage() {
        let manager = SocketManager(socketURL: URL(string: "http://localhost:8080")!, config: [.log(true), .compress])
        let socket = manager.defaultSocket
        socket.on(clientEvent: .connect) {data, ack in
            print("socket connected")
        }
        socket.on("message status") {[weak self] data, ack in
            guard let dict = data[0] as? [String:Message] else {return}
                    print(dict)
        }
        socket.connect()
    }
    
}
