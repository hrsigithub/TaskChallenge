//
//  Kadai007View.swift
//  TaskChallenge
//
//  Created by Hiroshi.Nakai on 2021/02/18.
//

import SwiftUI

struct Kadai007View: View {
    @State private var selection = 0

    var body: some View {

        VStack {
            TabView(selection: $selection) {
                CalculationView(color: Color.red, calculate: +)
                    .tabItem {
                        Text("加算タブ")
                    }
                    .tag(0)
                CalculationView(color: Color.green, calculate: -)
                    .tabItem {
                        Text("減算タブ")
                    }
                    .tag(1)
            }
        }
    }
}

struct CalculationView: View {

    @State private var textArray = Array(repeating: "", count: 2)
    @State private var result: Int?

    var color: Color
    let calculate: (Int, Int) -> Int

    var body: some View {
        ZStack {
            color
                .edgesIgnoringSafeArea(.all)

            VStack {

                Kadai007.InputView(text: $textArray[0])
                    .padding(10)
                Kadai007.InputView(text: $textArray[1])
                    .padding(5)

                Button("計算") {
                    guard let num1 = Int(textArray[0]) else {
                        return
                    }

                    guard let num2 = Int(textArray[1]) else {
                        return
                    }

                    result = calculate(num1, num2)

                    UIApplication.shared.closeKeyboard()
                }.padding()

                HStack {
                    Text(String(result ?? 0))
                }

                Spacer()
            }
        }
    }
}

struct Kadai007 {
    struct InputView: View {
        @Binding var text: String

        var body: some View {
            TextField("", text: $text)
                .keyboardType(.numberPad)
                .frame(width: 100, height: 30)
                .background(Color.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.black.opacity(0.5), lineWidth: 1)
                )
        }
    }
}

struct Kadai007View_Previews: PreviewProvider {
    static var previews: some View {
        Kadai007View()
    }
}
