//
//  RegistrationView.swift
//  WordsLearningApp
//
//  Created by Дарья Кукурудза on 06.11.2023.
//

import SwiftUI

struct RegistrationView: View {
    
    @State var viewModel = RegistrationViewViewModel()
    
    var body: some View {
        VStack {
       //     HeaderView(title: "Register", subTitle: "Start organizing todos", angle: -15, background: Color.orange)
            
            Form {
                TextField("Full Name", text: $viewModel.name)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email Address", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(.none)
                    .autocorrectionDisabled()
                
                SecureField("Password", text: $viewModel.password)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                ExtraButton(title: "Create Account", background: Color.green) {
                    viewModel.register()
                }
             //   .padding()
            }
            
            Spacer()
        }
    }
}

#Preview {
    RegistrationView()
}
