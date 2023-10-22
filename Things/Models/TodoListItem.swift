//
//  TodoListItem.swift
//  Things
//
//  Created by Maksim Vakarchuk on 10/21/23.
//

import Foundation

struct TodolistItem: Codable, Identifiable {
    let id: String
    let title: String
    let dueDate: TimeInterval
    let createdDate: TimeInterval
    var isDone: Bool
    
    mutating func setDone(_ state: Bool) {
        isDone = state
    }
}
