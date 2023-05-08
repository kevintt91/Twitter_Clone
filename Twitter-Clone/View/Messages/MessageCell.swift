//
//  MessageCell.swift
//  Twitter-Clone
//
//  Created by 김창현 on 5/8/23.
//

import SwiftUI

struct MessageCell: View {
    
    @State private var width = UIScreen.main.bounds.width
    
    var body: some View {
        VStack(alignment: .leading, spacing: nil) {
            Rectangle()
                .frame(width: width, height: 1, alignment: .center)
                .foregroundColor(.gray)
                .opacity(0.3)
            
            HStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 60, height: 60)
                    .cornerRadius(30)
                    .padding(.leading)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Cem ")
                            .fontWeight(.bold)
                        .foregroundColor(.primary)
                        
                        Text("@cem_Salata")
                            .foregroundColor(.gray)
                        
                        Spacer()
                        
                        Text("6/8/23")
                            .padding(.trailing)
                    }
                    
                    Text("You: How is it going?")
                        .foregroundColor(.gray)
                    
                    Spacer()
                }
            }
            .padding()
        }
        .frame(width: width, height: 84)
    }
}

struct MessageCell_Previews: PreviewProvider {
    static var previews: some View {
        MessageCell()
    }
}
