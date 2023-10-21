//
//  RegisterView.swift
//  Things
//
//  Created by Maksim Vakarchuk on 10/21/23.
//

import SwiftUI

struct RegisterView: View {
    @State var name = ""
    @State var email = ""
    @State var password = ""
    
    
    var body: some View {
        HeaderView(title: "Register", subtitle:"Get started", angle: -15, background: .orange)
        
        Form {
            TextField("Full Name", text: $name)
                .textFieldStyle(DefaultTextFieldStyle())
            TextField("Email Address", text: $email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                .autocorrectionDisabled()
            SecureField("Password", text: $password)
                .textFieldStyle(DefaultTextFieldStyle())
            
            TButton(title: "Create Account", background: .green) {
            }
        }
        .offset(y: -50)
        
        Spacer()
    }
}

#Preview {
    RegisterView()
}
