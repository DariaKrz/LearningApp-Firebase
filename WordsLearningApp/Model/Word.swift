//
//  Word.swift
//  WordsLearningApp
//
//  Created by Дарья Кукурудза on 01.11.2023.
//

import Foundation

struct Word: Identifiable, Hashable, Codable {
    var id = UUID()
    
    let title: String
    let example: String
    let form: String
    let translation: String
    let exampleTranslation: String
    
    var answer: String?
    
    var repetition: Int
}


extension Word {
    static var MOCK_WORDS: [Word] = [
        
        .init(title: "cope",
              example: "She found it difficult to ... with three small children and a job.",
              form: "verb",
              translation: "витримати, справитися",
              exampleTranslation: "Їй було тяжко справитися з трьома маленькими дітьми і роботою.",
              repetition: 30),
        
        .init(title: "supplied",
              example: "Our room was ... with the basic.",
              form: "verb, past",
              translation: "постачати",
              exampleTranslation: "В нашій кімнаті було все необдхідне.",
              repetition: 20),
        
        .init(title: "estimated",
              example: "Unless I'm mistaken, the ... cost of the project has doubted.",
              form: "adjective",
              translation: "допустимий, ймовірний",
              exampleTranslation: "Якщо не помиляюсь, то ймовірна вартість проекту подвоїлась.",
              repetition: 25)
        
  ]
}


