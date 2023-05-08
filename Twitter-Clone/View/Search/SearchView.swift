//
//  SearchView.swift
//  Twitter-Clone
//
//  Created by 김창현 on 5/4/23.
//

import SwiftUI

struct SearchView: View {
    
    @State private var text = ""
    @State private var isEditing = false
    
    var body: some View {
        VStack {
            SearchBar(text: $text, isEditing: $isEditing)
                .padding(.horizontal)
            
            if !isEditing {
                List(0..<9) { i in
                    SearchCell(tag: "Hello", tweets: String(i))
                }
            } else {
                // Editing
                List(0..<9) { _ in
                    SearchUserCell()
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
