//
//  Kadai001View.swift
//  TaskChallenge
//
//  Created by Hiroshi.Nakai on 2021/02/08.
//

import SwiftUI

struct Kadai001View: View {
    
    @State private var textArray: [String]
        = Array<String>(repeating: "", count: 5)
    
    @State private var result = ""

    var body: some View {
        VStack {
            InputView(text: $textArray[0])
            InputView(text: $textArray[1])
            InputView(text: $textArray[2])
            InputView(text: $textArray[3])
            InputView(text: $textArray[4])

            Text(result)
            
            Button(action: {
                // 計算
                let num1 = Int(textArray[0]) ?? 0
                let num2 = Int(textArray[1]) ?? 0
                let num3 = Int(textArray[2]) ?? 0
                let num4 = Int(textArray[3]) ?? 0
                let num5 = Int(textArray[4]) ?? 0
                
                let total = num1 + num2 + num3 + num4 + num5
                self.result = String(total)
            }) {
                Text("計算")
            }.padding()

            Spacer()
        }
    }
}

struct InputView: View {
    @Binding var text: String

    var body: some View {
        TextField("", text: $text)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.blue, lineWidth: 1)
            )
            .padding()
    }
}

struct Kadai001View_Previews: PreviewProvider {
    static var previews: some View {
        Kadai001View()
    }
}
