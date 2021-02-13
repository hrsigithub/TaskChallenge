//
//  Kadai003View.swift
//  TaskChallenge
//
//  Created by Hiroshi.Nakai on 2021/02/13.
//

import SwiftUI

struct Kadai003View: View {

    @State private var textArray = Array(repeating: "", count: 2)

    @State private var flagLeft = true
    @State private var flagRight = true

    @State private var leftNum = ""
    @State private var rightNum = ""

    @State private var result = "結果"

    var body: some View {
        VStack {
            HStack {
                InputView(text: $textArray[0])
                InputView(text: $textArray[1])
            }.padding()

            HStack {
                Text("+")
                Toggle("", isOn: $flagLeft)
                    .labelsHidden()
                Text("-")

                Text("+")
                Toggle("", isOn: $flagRight)
                    .labelsHidden()
                Text("-")
            }

            //            Button(action: {
            //                // 計算
            //                let num1 = Int(textArray[0]) ?? 0
            //                let num2 = Int(textArray[1]) ?? 0
            //
            //                leftNum = String(flagLeft ? num1  * -1 : num1)
            //                rightNum = String(flagRight ? num2  * -1 : num2)
            //
            //                let resultNum1 = Int(leftNum) ?? 0
            //                let resultNum2 = Int(rightNum) ?? 0
            //
            //                result = String(resultNum1 + resultNum2)
            //
            //                UIApplication.shared.closeKeyboard()
            //            }) {
            //                Text("計算")
            //            }.padding()

            Button("計算") {
                // 計算
                let num1 = Int(textArray[0]) ?? 0
                let num2 = Int(textArray[1]) ?? 0

                leftNum = String(flagLeft ? num1  * -1 : num1)
                rightNum = String(flagRight ? num2  * -1 : num2)

                let resultNum1 = Int(leftNum) ?? 0
                let resultNum2 = Int(rightNum) ?? 0

                result = String(resultNum1 + resultNum2)

                UIApplication.shared.closeKeyboard()
            }.padding()

            HStack {
                Text(leftNum)
                Text("+")
                Text(rightNum )
            }.padding()

            HStack {
                Text(result)
            }.padding()

            Spacer()
        }
    }
}

struct Kadai003View_Previews: PreviewProvider {
    static var previews: some View {
        Kadai003View()
    }
}
