//
//  ProfileView.swift
//  WordsLearningApp
//
//  Created by Дарья Кукурудза on 06.11.2023.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    
    var body: some View {
        NavigationView {
            VStack {
                if let user = viewModel.user {
                    profile(user: user)
                } else {
                    Text("Loading Profile...")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear{
            viewModel.fetchUser()
        }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View {
        Image(systemName: "person.cirсle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color.blue)
            .frame(width: 125, height: 125)
            .padding()
        
        VStack(alignment: .leading) {
            HStack {
                Text("Name: ")
                    .bold()
                Text(user.name)
            }
            .padding(1)
            HStack {
                Text("Email: ")
                    .bold()
                Text(user.email)
            }
            .padding(1)
        }
        .padding()
        
        Button("Log Out") {
            viewModel.logout()
        }
        .tint(.red)
        .padding()
        Spacer()
    }
}

#Preview {
    ProfileView()
}
