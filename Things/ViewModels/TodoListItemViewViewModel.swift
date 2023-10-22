//
//  TodoListItemViewViewModel.swift
//  Things
//
//  Created by Maksim Vakarchuk on 10/21/23.
//

import FirebaseAuth
import FirebaseFirestore
import Foundation

class TodoListItemViewViewModel: ObservableObject {
    init() {
        
    }
    
    func toggleIsDone(item: TodoListItem) {
        var newItem = item
        newItem.setDone(!item.isDone)
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        
        let db = Firestore.firestore()
        
        db.collection("users").document(uid).collection("todos").document(newItem.id).setData(newItem.asDictionary())
    }
}
