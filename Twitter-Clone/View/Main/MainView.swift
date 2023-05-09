//
//  MainView.swift
//  Twitter-Clone
//
//  Created by 김창현 on 5/8/23.
//

import SwiftUI

struct MainView: View {
    
    @State private var width = UIScreen.main.bounds.width - 90
    @State private var x = -UIScreen.main.bounds.width + 90
    
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
                    VStack {
                        TopBar(x: $x)
                        Home()
                    }
                    SlideMenu()
                        .shadow(color: .black.opacity(x != 0 ? 0.1 : 0), radius: 5, x: 5, y: 0)
                        .background(.black.opacity(x != 0 ? 0 : 0.5))
                        .offset(x: x)
                        .ignoresSafeArea(.all, edges: .vertical)
                        .onTapGesture {
                            withAnimation {
                                x = -width
                            }
                        }
                }
                
                .gesture(DragGesture().onChanged({ value in
                    withAnimation {
                        if value.translation.width > 0 {
                            if x < 0 {
                                // Hidden
                                x = -width + value.translation.width
                            }
                        } else {
                            if x != -width {
                                // Not Hidden
                                x = value.translation.width
                            }
                        }
                    }
                })
                    .onEnded({ value in
                        withAnimation {
                            if -x < width / 2 {
                                x = 0
                            } else {
                                x = -width
                            }
                        }
                    })
                
                )
                
            }
            .navigationTitle("")
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
