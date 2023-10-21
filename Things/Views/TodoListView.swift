//
//  TodoListItemsView.swift
//  Things
//
//  Created by Maksim Vakarchuk on 10/21/23.
//

import SwiftUI

struct TodoListView: View {
    @StateObject var viewModel = TodoListViewViewModel()
    
    private let userId: String
    
    init(userId: String) {
        self.userId = userId
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

#Preview {
    TodoListView(userId: "J8SBrFefVxMSpXVYJhFeizu9Gki1")
}
