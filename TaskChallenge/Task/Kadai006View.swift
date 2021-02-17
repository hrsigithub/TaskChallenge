//
//  Kadai006View.swift
//  TaskChallenge
//
//  Created by Hiroshi.Nakai on 2021/02/17.
//

import SwiftUI

struct Kadai006View: View {

    @State private var numSlider:Float = 50
    @State private var isAlert = false
    @State private var message = ""

    @State var random = Int.random(in: 1..<101)

    var body: some View {
        VStack {
            HStack {
                Text(String(random))
                    .font(.largeTitle)
            }.padding()

            HStack {
                Text("1")
                Slider(value: $numSlider, in: 1...100, step: 1.0)
                Text("100")
            }.padding()

            HStack {
                Button("判定！") {
                    isAlert = true

                    if Int(numSlider) == random {
                        message = "あたり！\nあなたの値: \(Int(numSlider))"
                    } else {
                        message = "はずれ！\nあなたの値: \(Int(numSlider))"
                    }

                }.alert(isPresented: $isAlert) {
                    Alert(title: Text("結果"),
                      message: Text(message),
                      dismissButton: .default(Text("再挑戦"),
                      action: {
                        numSlider = 50
                        random = Int.random(in: 1..<101)
                      })
                    )
                }
            }

            Spacer()
        }
    }

}

struct Kadai006View_Previews: PreviewProvider {
    static var previews: some View {
        Kadai006View()
    }
}
