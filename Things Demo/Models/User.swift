//
//  User.swift
//  Things
//
//  Created by Maksim Vakarchuk on 10/21/23.
//

import Foundation

struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval
}
