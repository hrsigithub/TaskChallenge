//
//  Kadai004View.swift
//  TaskChallenge
//
//  Created by Hiroshi.Nakai on 2021/02/13.
//

import SwiftUI

struct Kadai004View: View {

    @State private var count = 0

    var body: some View {
        VStack {
            Text(String(count))
                .padding()

            Button("+") {
                count += 1
            }.padding()

            Button("clear") {
                count = 0
            }

            Spacer()

        }
    }
}

struct Kadai004View_Previews: PreviewProvider {
    static var previews: some View {
        Kadai004View()
    }
}
