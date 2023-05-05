//
//  Home.swift
//  Twitter-Clone
//
//  Created by 김창현 on 5/4/23.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack{
            ZStack {
                TabView {
                    FeedView()
                        .tabItem {
                            Image("Home")
                        }
                    
                    SearchView()
                        .tabItem {
                            Image("Search")
                        }
                    
                    NotificationsView()
                        .tabItem {
                            Image("Notifications")
                        }
                    
                    MessagesView()
                        .tabItem {
                            Image("Messages")
                        }
                }
            }
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
