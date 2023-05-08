//
//  MainView.swift
//  Twitter-Clone
//
//  Created by 김창현 on 5/8/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            TopBar()
            Home()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
