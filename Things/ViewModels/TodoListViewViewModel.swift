//
//  TodoListViewViewModel.swift
//  Things
//
//  Created by Maksim Vakarchuk on 10/21/23.
//

import Foundation
import FirebaseFirestore

class TodoListViewViewModel: ObservableObject {
    @Published var showingNewItemView = false
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    func toggleIsDone(item: TodoListItem) {
        
    }
    
    
    /// Delete to do list item
    /// - Parameter id: Todo Item Id
    func delete(id: String) {
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(userId)
            .collection("todos")
            .document(id)
            .delete()
    }
}
