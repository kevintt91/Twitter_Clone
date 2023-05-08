//
//  FeedView.swift
//  Twitter-Clone
//
//  Created by 김창현 on 5/4/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            
            TweetCellView(tweet: "Hey Tim, are those regular glasses?", tweetImage: "post")
            
            Divider()
            
            VStack(spacing: 18) {
                ForEach(1...20, id: \.self) { _ in
                    TweetCellView(tweet: sampleText)
                    Divider()
                }
            }
            .padding([.top, .bottom])
            .zIndex(0)
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
