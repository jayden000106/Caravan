//
//  ContentView.swift
//  Caravan
//
//  Created by 정지혁 on 2022/04/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            CustomTabBar()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
    }
}
