//
//  LoginView.swift
//  WordsLearningApp
//
//  Created by Дарья Кукурудза on 06.11.2023.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                
                Form {
                    if !viewModel.errorMassage.isEmpty {
                        Text(viewModel.errorMassage)
                            .foregroundColor(.red)
                    }
                    
                    TextField("Email Adress", text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                        .autocapitalization(.none)
                
                    SecureField("Password", text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())

                    ExtraButton(title: "Log In", background: Color.blue) {
                        viewModel.login()
                    }
                 //   .padding()
                }
                
                VStack {
                    Text("New around here?")
                 //   Button("Create an Account") {}
                    NavigationLink("Create an Account", destination: RegistrationView())
                }
                .padding(.bottom, 50)
                
                
                Spacer()
            }

        }
    }
}

#Preview {
    LoginView()
}
