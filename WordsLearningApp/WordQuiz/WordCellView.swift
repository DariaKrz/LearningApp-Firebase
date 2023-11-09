//
//  WordView.swift
//  WordsLearningApp
//
//  Created by Дарья Кукурудза on 01.11.2023.
//

import SwiftUI

struct WordCellView: View {
    
    @State private var userWord = ""

    
    @State var word = Word(title: "cope",
                           example: "She found it difficult to ... with three small children and a job.",
                           form: "verb",
                           translation: "витримати, справитися",
                           exampleTranslation: "Їй було тяжко справитися з трьома маленькими дітьми і роботою.",
                           repetition: 0)
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Image(systemName: "house.fill")
                        .foregroundColor(.black)
                        .imageScale(.large)
                    
                    ProgressView(value: 0.2)
                        .accentColor(.black)
                        .padding(.trailing, 10)
                    
                    Text("\(1)/\(Word.MOCK_WORDS.count)")
                        .font(.footnote)
                }
                .padding(.top, 45)
                
    
                VStack(alignment: .leading) {
                    ProgressView(value: 0.7)
                        .accentColor(.black)
                        .frame(maxWidth: 100)
                        .padding(.top, 1)
                    
                    Text(word.example)
                        .foregroundColor(.black)
                        .font(.system(size: 25, weight: .semibold))
                        .padding(.top, 10)
                        
                    Text(word.form)
                        .foregroundColor(.black)
                        .font(.footnote)
                        .padding(2)
                    
                    HStack {
                        TextField("Enter the word", text: $userWord)
                            .foregroundColor(.gray)
                            .autocapitalization(.none)
                            .accentColor(.black)
                        .padding(.top, 10)
                        
                        Button {
                            checkAnswer()
                        } label: {
                            Text("Enter")
                                .accentColor(.white)
                        }
                        .padding(10)
                        .cornerRadius(30)
                        .shadow(radius: 0)
                        .background(Color.black.cornerRadius(10))
                    }

                }
                .padding()
                .frame(maxWidth: .infinity)
                .shadow(radius: 10)
            //    .background(.cyan)
                
                VStack(alignment: .leading) {
                    
                    HStack {
                        Text(word.translation)
                            .foregroundColor(.black)
                            .font(.system(size: 15, weight: .semibold))
                        .padding(.leading, 2)
                        
                        Spacer()
                    }
                        
                    Text(word.exampleTranslation)
                        .foregroundColor(.black)
                        .font(.subheadline)
                        .padding(1)
       
                }
                .padding()
                .frame(maxWidth: .infinity)
                .shadow(radius: 20)
              //  .background(Color.cyan)
                
                Spacer()
            }
            
         //   Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea()
    }
    
    func checkAnswer() {
        if word.repetition < 1 {
            word.repetition = 1
        }
        
        if userWord != word.title {
            word.repetition += 5
        } else {
            word.repetition -= 1
        }
        
        print(word.repetition)
    }
}

#Preview {
    WordCellView()
}
