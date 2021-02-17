//
//  Kadai005View.swift
//  TaskChallenge
//
//  Created by Hiroshi.Nakai on 2021/02/16.
//

import SwiftUI

struct Kadai005View: View {

    @State private var textArray = Array(repeating: "", count: 2)
    @State private var isAlert = false
    @State private var errorMessage = ""
    @State private var result: Float?

    var body: some View {
        VStack {
            HStack {
                InputView(text: $textArray[0])
                Text("÷")
                InputView(text: $textArray[1])
            }.padding()

            HStack {
                Button("計算") {
                    guard let num1 = Int(textArray[0]) else {
                        isAlert = true
                        errorMessage = "割られる数を入力してください。"
                        return
                    }

                    guard let num2 = Int(textArray[1]) else {
                        isAlert = true
                        errorMessage = "割る数を入力してください。"
                        return
                    }

                    if num2 == 0 {
                        isAlert = true
                        errorMessage = "割る数には0を入力しないでください。"
                        return
                    }

                    result = Float(num1) / Float(num2)

                }.alert(isPresented: $isAlert) {
                    Alert(title: Text("課題5"),
                          message: Text(errorMessage))
                }
            }.padding()

            HStack {
                // ここで NumberFormatter使用できないのでメソッド化した。
                Text(format(result ?? 0))
            }

            Spacer()
        }
    }

    private func format(_ value: Float) -> String {
        let formatter = NumberFormatter()
        formatter.maximumFractionDigits = 5

        return formatter.string(from: NSNumber(value: value)) ?? ""
    }
 }

struct Kadai005View_Previews: PreviewProvider {
    static var previews: some View {
        Kadai005View()
    }
}
