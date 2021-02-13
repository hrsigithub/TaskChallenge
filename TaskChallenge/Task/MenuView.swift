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
//            NavigationLink("課題１", destination: Kadai001View())
//            NavigationLink("課題２", destination: Kadai002View())
            NavigationLink("課題３", destination: Kadai003View())
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
