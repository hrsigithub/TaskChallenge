//
//  Kadai006View.swift
//  TaskChallenge
//
//  Created by Hiroshi.Nakai on 2021/02/17.
//

import SwiftUI

struct Kadai006View: View {

    @State private var numSlider: Float = 50
    @State var random = Int.random(in: Self.answerRange)
    @State private var errorAlert: AlertDetail?

    private static let answerRange = 1...100

    private var sliderRange: ClosedRange<Float> {
        Float(Self.answerRange.lowerBound)...Float(Self.answerRange.upperBound)
    }

    var body: some View {
        VStack {
            HStack {
                Text(String(random))
                    .font(.largeTitle)
            }.padding()

            HStack {
                Text("1")
                Slider(value: $numSlider, in: sliderRange)
                Text("100")
            }.padding()

            HStack {

                Button("判定！") {

                    let firstLine = Int(numSlider) == random ? "あたり！" : "はずれ！"
                    errorAlert = .init(message: "\(firstLine)\nあなたの値: \(Int(numSlider))")

                }.alert(item: $errorAlert) { msg in
                    Alert(title: Text("結果"),
                          message: Text(msg.message),
                          dismissButton: .default(Text("再挑戦"),
                                                  action: {
                                                    numSlider = 50
                                                    random = Int.random(in: Self.answerRange)
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
