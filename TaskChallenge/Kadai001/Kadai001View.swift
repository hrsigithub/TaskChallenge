//
//  Kadai001View.swift
//  TaskChallenge
//
//  Created by Hiroshi.Nakai on 2021/02/08.
//

import SwiftUI

struct Kadai001View: View {
    
    @State private var text1 = ""
    @State private var text2 = ""
    @State private var text3 = ""
    @State private var text4 = ""
    @State private var text5 = ""
    
    @State private var result = ""

    var body: some View {
        VStack {
            TextField("", text: $text1)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.blue, lineWidth: 1)
                )
                .padding()
                
            TextField("", text: $text2)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.blue, lineWidth: 1)
                )
                .padding()

            TextField("", text: $text3)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.blue, lineWidth: 1)
                )
                .padding()

            TextField("", text: $text4)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.blue, lineWidth: 1)
                )
                .padding()

            TextField("", text: $text5)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.blue, lineWidth: 1)
                )
                .padding()

            
            Text(result)
            
            Button(action: {
                // 計算
                let num1 = Int(text1) ?? 0
                let num2 = Int(text2) ?? 0
                let num3 = Int(text3) ?? 0
                let num4 = Int(text4) ?? 0
                let num5 = Int(text5) ?? 0
                
                let total = num1 + num2 + num3 + num4 + num5
                self.result = String(total)

                
            }) {
                Text("計算")
            }.padding()


            Spacer()
        }
    }
}

struct Kadai001View_Previews: PreviewProvider {
    static var previews: some View {
        Kadai001View()
    }
}
