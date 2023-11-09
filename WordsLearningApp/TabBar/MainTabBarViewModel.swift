//
//  MainTabBarViewModel.swift
//  WordsLearningApp
//
//  Created by Дарья Кукурудза on 06.11.2023.
//

import Foundation
import FirebaseAuth


class MainTabBarViewModel: ObservableObject {
    
    @Published var currentUserId: String = ""
    
    private var handler: AuthStateDidChangeListenerHandle?
    
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
