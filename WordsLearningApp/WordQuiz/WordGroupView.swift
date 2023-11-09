//
//  WordGroupView.swift
//  WordsLearningApp
//
//  Created by Дарья Кукурудза on 01.11.2023.
//

import SwiftUI

struct WordGroupView: View {
  //  @ObservableObject var word = Word()
    
    @State var answerArray = []
    
    var body: some View {
        ZStack {
            TabView {
                ForEach(Word.MOCK_WORDS, id: \.id) { word in
                    WordCellView(word: word)
                    
                }
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
        }
        .ignoresSafeArea()
    }
    
//    func sortArray() {
//        answerArray.append(Word.MOCK_WORDS)
//    }
}

#Preview {
    WordGroupView()
}
