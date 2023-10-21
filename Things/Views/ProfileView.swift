//
//  ProfileView.swift
//  Things
//
//  Created by Maksim Vakarchuk on 10/21/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    init() {
        
    }
    
    var body: some View {
        NavigationView {
            VStack {
                
            }.navigationTitle("Profile")
        }
    }
}

#Preview {
    ProfileView()
}
