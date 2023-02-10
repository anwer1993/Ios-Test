//
// ThreadMessages.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct ThreadMessages: Codable {

    public var _id: String
    public var text: String
    public var sender: String?
    public var read: Bool?
    public var delivered: Bool?
    public var thread: String?
    public var createdBy: String?
    public var updatedBy: String?

    public init(_id: String, text: String, sender: String? = nil, read: Bool? = nil, delivered: Bool? = nil, thread: String? = nil, createdBy: String? = nil, updatedBy: String? = nil) {
        self._id = _id
        self.text = text
        self.sender = sender
        self.read = read
        self.delivered = delivered
        self.thread = thread
        self.createdBy = createdBy
        self.updatedBy = updatedBy
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case text
        case sender
        case read
        case delivered
        case thread
        case createdBy = "created_by"
        case updatedBy = "updated_by"
    }

}
