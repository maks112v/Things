//
//  TButton.swift
//  Things
//
//  Created by Maksim Vakarchuk on 10/21/23.
//

import SwiftUI

struct TButton: View {
    let title: String
    let background: Color
    let action: () -> Void
    var body: some View {
        Button {
            // Attempt Login
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10).foregroundColor(background)
                Text(title).foregroundColor(.white).bold()
            }
        }
        .padding()
    }
}

#Preview {
    TButton(title: "Button", background: .blue) {
        
    }
}
