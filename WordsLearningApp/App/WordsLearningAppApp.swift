//
//  WordsLearningAppApp.swift
//  WordsLearningApp
//
//  Created by Дарья Кукурудза on 01.11.2023.
//

import SwiftUI
import FirebaseCore

@main
struct WordsLearningAppApp: App {
    
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
