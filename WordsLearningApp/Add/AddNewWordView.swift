//
//  AddNewWordView.swift
//  WordsLearningApp
//
//  Created by Дарья Кукурудза on 02.11.2023.
//

import SwiftUI

struct AddNewWordView: View {
    
//    @State private var userWord = ""
//    @State private var userExample = ""
//    @State private var form = ""
//    @State private var translation = ""
//    @State private var translationExample = ""
    
    @StateObject var viewModel = AddNewWordViewViewModel()
    @Binding var newWordPresented: Bool
    
    var body: some View {
    //    ZStack {
            VStack {
                NavigationView {
                    Form {
                        TextField("new word", text: $viewModel.title)
                            .autocapitalization(.none)
                        TextField("example", text: $viewModel.example)
                        TextField("form (noun/verb/adj)", text: $viewModel.form)
                            .autocapitalization(.none)
                        TextField("translation", text: $viewModel.translation)
                            .autocapitalization(.none)
                        TextField("example to translation", text: $viewModel.exampleTranslation)
                    }
                    .navigationTitle("Add a new word")
                    .navigationBarTitleDisplayMode(.large)
                }
                ExtraButton(title: "Save", background: Color.black) {
                    if viewModel.canSave {
                        viewModel.save()
                        newWordPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
                }
                .frame(height: 80)
                Spacer()
            }
     //   }
    }
}

#Preview {
    AddNewWordView(newWordPresented: Binding(get: {
        return true
    }, set: { _ in
        
    }))
}

