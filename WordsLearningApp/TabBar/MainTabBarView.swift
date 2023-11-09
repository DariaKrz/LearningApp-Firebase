//
//  TabBarView.swift
//  WordsLearningApp
//
//  Created by Дарья Кукурудза on 01.11.2023.
//

import SwiftUI

struct MainTabBarView: View {
    
    @StateObject var viewModel = MainTabBarViewModel()
    
    var body: some View {
        NavigationView {
            if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
                accountView
            } else {
               LoginView()
            }
        }
    }
    
    @ViewBuilder
    var accountView: some View {
        TabView() {
            WordGroupView()
                .tabItem {
                    Image(systemName: "list.triangle")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            AddNewWordView(newWordPresented: Binding(get: {
                return true
            }, set: { _ in
                
            }))
                .tabItem {
                    Image(systemName: "plus.circle")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }
        }
        .accentColor(.black)
    }
}

#Preview {
    MainTabBarView()
}
