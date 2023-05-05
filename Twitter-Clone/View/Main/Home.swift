//
//  Home.swift
//  Twitter-Clone
//
//  Created by 김창현 on 5/4/23.
//

import SwiftUI

struct Home: View {
    
    @State private var selectedIndex = 0
    @State private var showCreateTweet = false
    @State private var text = ""
    var body: some View {
        VStack{
            ZStack {
                TabView {
                    FeedView()
                        .onTapGesture {
                            self.selectedIndex = 0
                        }
                        .tabItem {
                            if (selectedIndex == 0) {
                                Image("Home")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                            } else {
                                Image("Home")
                            }
                        }
                        .tag(0)
                    
                    SearchView()
                        .onTapGesture {
                            self.selectedIndex = 1
                        }
                        .tabItem {
                            if (selectedIndex != 1) {
                                Image("Search")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                            } else {
                                Image("Search")
                            }
                        }
                        .tag(1)
                    
                    NotificationsView()
                        .onTapGesture {
                            self.selectedIndex = 2
                        }
                        .tabItem {
                            if (selectedIndex != 2) {
                                Image("Notifications")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                            } else {
                                Image("Notifications")
                            }
                        }
                        .tag(2)
                    
                    MessagesView()
                        .onTapGesture {
                            self.selectedIndex = 3
                        }
                        .tabItem {
                            if (selectedIndex != 3) {
                                Image("Messages")
                                    .renderingMode(.template)
                                    .foregroundColor(Color("bg"))
                            } else {
                                Image("Messages")
                            }
                        }
                        .tag(3)
                }// TabView
                
                VStack {
                    Spacer()
                    HStack {
                        Spacer()
                        Button {
                            self.showCreateTweet.toggle()
                        } label: {
                            Image("tweet")
                                .renderingMode(.template)
                                .resizable()
                                .frame(width: 29, height: 29)
                                .padding()
                                .background(Color("bg"))
                                .foregroundColor(.white)
                                .clipShape(Circle())
                        }
                    }
                    .padding()
                }
                .padding(.bottom, 65)
                
                
            }// ZStack
            .sheet(isPresented: $showCreateTweet) {
                CreateTweetView(text: $text)
            }
        }
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
