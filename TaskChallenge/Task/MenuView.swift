//
//  MenuView.swift
//  TaskChallenge
//
//  Created by Hiroshi.Nakai on 2021/02/13.
//

import SwiftUI

// let KadaiViews: [View] = [
//    Kadai001View()
// ]

struct MenuView: View {

    var body: some View {
        NavigationView {
            List(1..<9) { index in
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
        case 5:
            Kadai005View()
        case 6:
            Kadai006View()
        case 7:
            Kadai007View()
        case 8:
            Kadai008View()
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
