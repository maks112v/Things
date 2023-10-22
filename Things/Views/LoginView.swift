//
//  LoginView.swift
//  Things
//
//  Created by Maksim Vakarchuk on 10/21/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                // Header
                HeaderView(title: "Things", subtitle: "Get things done", angle: 15, background: .pink)
                // Login Form
                
                Form {
                    if viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage).foregroundColor(.red)
                    }
                    
                    TextField("Email Address", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                        .autocorrectionDisabled()
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TButton(title: "Log In", background: .blue) {
                        viewModel.login()
                    }
                }.offset(y: -50)
                
                // Create Account
                VStack {
                    Text("New around here?")
                    NavigationLink("Create an Account", destination: RegisterView())
                }
                .padding(.bottom, 50)
            }
        }
    }
}

#Preview {
    LoginView()
}
