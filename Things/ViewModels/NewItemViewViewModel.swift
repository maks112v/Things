//
//  NewItemViewViewModel.swift
//  Things
//
//  Created by Maksim Vakarchuk on 10/21/23.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class NewItemViewViewModel: ObservableObject {
    @Published var title = ""
    @Published var dueDate = Date()
    @Published var showAlert = false
    
    init() {
        
    }
    
    func save() {
        guard canSave else {
            return 
        }
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        
        let newId = UUID().uuidString
        let newItem = TodolistItem(id: newId, title: title, dueDate: dueDate.timeIntervalSince1970, createdDate: Date().timeIntervalSince1970, isDone: false)
        
        db.collection("users")
            .document(uid)
            .collection("todos")
            .document(newId)
            .setData(newItem.asDictionary())
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }

        guard dueDate >= Date().addingTimeInterval(-86400) else {
            return false
        }

        return true
    }
}
