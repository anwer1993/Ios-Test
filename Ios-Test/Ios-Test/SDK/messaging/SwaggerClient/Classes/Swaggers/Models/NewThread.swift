//
// NewThread.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct NewThread: Codable {

    public var title: String?
    public var participents: [String]?
    public var messages: [String]?
    public var createdBy: String?
    public var updatedBy: String?

    public init(title: String? = nil, participents: [String]? = nil, messages: [String]? = nil, createdBy: String? = nil, updatedBy: String? = nil) {
        self.title = title
        self.participents = participents
        self.messages = messages
        self.createdBy = createdBy
        self.updatedBy = updatedBy
    }

    public enum CodingKeys: String, CodingKey { 
        case title
        case participents
        case messages
        case createdBy = "created_by"
        case updatedBy = "updated_by"
    }

}
