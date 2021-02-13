//
//  Kadai004View.swift
//  TaskChallenge
//
//  Created by Hiroshi.Nakai on 2021/02/13.
//

import SwiftUI

struct Kadai004View: View {

    @State private var result = "0"

    var body: some View {
        VStack {
            Text(result)
                .padding()

            Button("+") {
                var num = Int(result) ?? 0
                num += 1

                result = String(num)
            }.padding()

            Button("clear") {
                result = "0"
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
