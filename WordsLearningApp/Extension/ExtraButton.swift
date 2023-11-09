//
//  ExtraButton.swift
//  WordsLearningApp
//
//  Created by Дарья Кукурудза on 06.11.2023.
//

import SwiftUI

struct ExtraButton: View {

    let title: String
    let background: Color
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(background)
                Text(title)
                    .foregroundColor(Color.white)
                    .bold()
            }
        }
        .padding()
    }
}


#Preview {
    ExtraButton(title: "Value", background: Color.pink) {
        //
    }
}

extension Encodable {
    func asDictionary() -> [String : Any] {
        guard let data = try? JSONEncoder().encode(self) else {
            return [:]
        }
        
        do {
            let json = try JSONSerialization.jsonObject(with: data) as? [String : Any]
            return json ?? [:]
        } catch {
            return [:]
        }
    }
}
