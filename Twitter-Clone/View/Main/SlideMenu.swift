//
//  SlideMenu.swift
//  Twitter-Clone
//
//  Created by 김창현 on 5/8/23.
//

import SwiftUI

struct SlideMenu: View {
    
    @State private var show: Bool = false
    
    var menuButtons = ["Profile", "Lists", "Topics", "Bookmarks", "Moments"]
//    var edges = UIApplication.shared.keyWindow?.safeAreaInsets
    var width = UIScreen.main.bounds.width
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                HStack(spacing: 0) {
                    let edges = geometry.safeAreaInsets
                    
                    VStack(alignment: .leading) {
                        Image("logo")
                            .resizable()
                            .frame(width: 60, height: 60)
                            .clipShape(Circle())
                        
                        HStack(alignment: .top, spacing: 12) {
                            VStack(alignment: .leading, spacing: 12) {
                                Text("Cem")
                                    .font(.title3)
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                
                                Text("@cem_salata")
                                    .foregroundColor(.gray)
                                
                                HStack(spacing: 20) {
                                    FollowView(count: 11, title: "Following")
                                    FollowView(count: 22, title: "Followers")
                                }
                                .padding(.top, 10)
                                
                                Divider()
                                    .padding(.top, 10)
                            }
                            
                            Spacer(minLength: 0)
                            
                            Button {
                                withAnimation {
                                    self.show.toggle()
                                }
                                
                            } label: {
                                Image(systemName: self.show ? "chevron.down" : "chevron.up")
                                    .foregroundColor(Color("bg"))
                            }

                            
                        }
                        
                        VStack(alignment: .leading) {
                            ForEach(menuButtons, id: \.self) { item in
                                MenuButton(title: item)
                            }
                            
                            Divider()
                                .padding(.top)
                            
                            Button {
                                
                            } label: {
                                MenuButton(title: "Twitter Ads")
                            }
                            
                            Divider()
                            
                            Button {
                                
                            } label: {
                                Text("Settings and privacy")
                                    .foregroundColor(.black)
                            }
                            .padding(.top, 20)
                            
                            Button {
                                
                            } label: {
                                Text("Help Center")
                                    .foregroundColor(.black)
                            }

                            
                            Spacer(minLength: 0)
                            
                            Divider()
                                .padding(.bottom)
                            
                            HStack {
                                Button {
                                    
                                } label: {
                                    Image("help")
                                        .renderingMode(.template)
                                        .resizable()
                                        .frame(width: 26, height: 26)
                                        .foregroundColor(Color("bg"))
                                }
                                
                                Spacer(minLength: 0)
                                
                                Image("barcode")
                                    .renderingMode(.template)
                                    .resizable()
                                    .frame(width: 26, height: 26)
                                    .foregroundColor(Color("bg"))
                                

                            }

                            
                        }
                        .opacity(self.show ? 1 : 0)
                        .frame(height: self.show ? nil : 0)
                        
                        VStack(alignment: .leading) {
                            Button {
                                
                            } label: {
                                Text("Create a new account")
                                    .foregroundColor(Color("bg"))
                            }
                            
                            Button {
                                
                            } label: {
                                Text("Add an existing account")
                                    .foregroundColor(Color("bg"))
                            }
                            
                            Spacer(minLength: 0)
                        }
                        
                        .opacity(!self.show ? 1 : 0)
                        .frame(height: !self.show ? nil : 0)
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, edges.top == 0 ? 15 : edges.top)
                    .padding(.bottom, edges.bottom == 0 ? 15 : edges.bottom)
                    .frame(width: self.width - 90)
                    .background(.white)
                    .ignoresSafeArea(.all, edges: .vertical)
                }
            }
        }
    }
}

struct SlideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SlideMenu()
    }
}
