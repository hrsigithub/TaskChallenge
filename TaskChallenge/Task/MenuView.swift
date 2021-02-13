//
//  MenuView.swift
//  TaskChallenge
//
//  Created by Hiroshi.Nakai on 2021/02/13.
//

import SwiftUI

struct MenuView: View {

    var body: some View {
        NavigationView {
            List(1..<5) { index in
                NavigationLink(destination: GetView(index: index)) {
                    Text("課題\(index)")
                }
            }
            .navigationTitle("課題チャレンジ")
        }
    }
}

struct GetView: View {

    var index: Int = 0

    var body: some View {

        switch index {
        case 1:
            Kadai001View()
        case 2:
            Kadai002View()
        case 3:
            Kadai003View()
        case 4:
            Kadai004View()
        default:
            Kadai001View()

        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
