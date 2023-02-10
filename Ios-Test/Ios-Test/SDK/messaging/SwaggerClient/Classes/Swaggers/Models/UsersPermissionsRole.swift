//
// UsersPermissionsRole.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation



public struct UsersPermissionsRole: Codable {

    public var _id: String
    public var name: String
    public var _description: String?
    public var type: String?
    public var permissions: [UsersPermissionsRolePermissions]?
    public var users: [MessageSender]?

    public init(_id: String, name: String, _description: String? = nil, type: String? = nil, permissions: [UsersPermissionsRolePermissions]? = nil, users: [MessageSender]? = nil) {
        self._id = _id
        self.name = name
        self._description = _description
        self.type = type
        self.permissions = permissions
        self.users = users
    }

    public enum CodingKeys: String, CodingKey { 
        case _id = "id"
        case name
        case _description = "description"
        case type
        case permissions
        case users
    }

}
