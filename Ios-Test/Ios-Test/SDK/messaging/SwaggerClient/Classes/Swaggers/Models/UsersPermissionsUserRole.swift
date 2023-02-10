//
// UsersPermissionsUserRole.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct UsersPermissionsUserRole: Codable {

    public var _id: String
    public var name: String
    public var _description: String?
    public var type: String?
    public var permissions: [String]?
    public var users: [String]?
    public var createdBy: String?
    public var updatedBy: String?

    public init(_id: String, name: String, _description: String? = nil, type: String? = nil, permissions: [String]? = nil, users: [String]? = nil, createdBy: String? = nil, updatedBy: String? = nil) {
        self._id = _id
        self.name = name
        self._description = _description
        self.type = type
        self.permissions = permissions
        self.users = users
        self.createdBy = createdBy
        self.updatedBy = updatedBy
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case _description = "description"
        case type
        case permissions
        case users
        case createdBy = "created_by"
        case updatedBy = "updated_by"
    }

}
