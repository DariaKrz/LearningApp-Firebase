//
//  AddNewWordViewViewModel.swift
//  WordsLearningApp
//
//  Created by Дарья Кукурудза on 08.11.2023.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore



class AddNewWordViewViewModel: ObservableObject {
    
    @Published var title = ""
    @Published var example = ""
    @Published var form = ""
    @Published var translation = ""
    @Published var exampleTranslation = ""
    
    @Published var showAlert = false
    
    init() {}
    
    func save() {
        guard canSave else {
            return
        }
        
        guard let uId = Auth.auth().currentUser?.uid else {
            return
        }
        
      //  let newId = UUID().uuidString
        let newWord = Word(title: title,
                           example: example,
                           form: form,
                           translation: translation,
                           exampleTranslation: exampleTranslation,
                           repetition: 30)

        
        let db = Firestore.firestore()
        
        db.collection("users")
            .document(uId)
            .collection("words")
            .document("123")
            .setData(newWord.asDictionary())
    }
    
    var canSave: Bool {
        guard !title.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        
        return true
    }
}
