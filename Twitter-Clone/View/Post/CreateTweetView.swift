//
//  SwiftUIView.swift
//  Twitter-Clone
//
//  Created by 김창현 on 5/4/23.
//

import SwiftUI

struct CreateTweetView: View {
    
    @Binding var text: String
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    dismiss.callAsFunction()
                } label: {
                    Text("Cancel")
                }
                
                Spacer()
                
                Button {
                    
                } label: {
                    Text("Tweet")
                        .padding()
                }
                .background(Color("bg"))
                .foregroundColor(.white)
                .clipShape(Capsule())
            }
            
            MultilineTextField(text: $text)
        }
        .padding()
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTweetView(text: .constant("Testing"))
    }
}
