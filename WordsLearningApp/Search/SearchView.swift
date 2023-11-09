//
//  SearchView.swift
//  WordsLearningApp
//
//  Created by Дарья Кукурудза on 02.11.2023.
//

import SwiftUI

struct SearchView: View {
    
    @State private var searchWords: [Word] = []
    @State private var searchText = ""
    
//    var filteredWords: [Word] {
//        return
//    }
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 12) {
                    ForEach(Word.MOCK_WORDS) { word in
                        NavigationLink(value: word) {
                            HStack {
                                VStack(alignment: .leading) {
                                    Text(word.title)
                                        .font(.headline)
                                    
                                    Text(word.translation)
                                        .font(.subheadline)
                                }
                                .accentColor(.black)
                                .padding(.leading, 20)
                                
                                Spacer()
                
                            }
                        }
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search")
            }
//            .navigationDestination(for: Word.self, destination: { word in
//                WordView(word: word)
//            })
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
