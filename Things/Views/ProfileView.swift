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
                if let user = viewModel.user {
                    profile(user: user)
                } else {
                    Text("Loading ...")
                }
                
            }.navigationTitle("Profile")
        }.onAppear {
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View {
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .frame(width: 125, height: 125).padding()

        VStack(alignment: .leading) {
            HStack {
                Text("Name: ")
                Text(user.name)
            }.padding()
            HStack {
                Text("Email: ")
                Text(user.email)
            }.padding()
            HStack {
                Text("Joined Date: ")
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
            }.padding()
        }
        
        Button("Log Out") {
            viewModel.logout()
        }.tint(.red).padding()
        
        Spacer()
    }
}

#Preview {
    ProfileView()
}
