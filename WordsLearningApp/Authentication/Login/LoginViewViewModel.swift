//
//  LoginViewViewModel.swift
//  WordsLearningApp
//
//  Created by Дарья Кукурудза on 06.11.2023.
//

import Foundation
import Firebase
import FirebaseAuth

class LoginViewViewModel: ObservableObject {
    
    @Published var email = ""
    @Published var password = ""
    @Published var errorMassage = ""
    
    init() {}
    
    func login() {
        guard validate() else {
            return
        }
        
        Auth.auth().signIn(withEmail: email, password: password)
        
        
    }
    
    func validate() -> Bool {
        errorMassage = ""
        
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            errorMassage = "Prease fill in all fields"
            return false
        }
        
        guard email.contains("@") && email.contains(".") else  {
            errorMassage = "Prease enter valid email"
            return false
        }
        
        return true
    }
}
