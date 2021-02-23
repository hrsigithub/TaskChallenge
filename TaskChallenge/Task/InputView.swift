//
//  InputView.swift
//  TaskChallenge
//
//  Created by Hiroshi.Nakai on 2021/02/12.
//

import SwiftUI

struct InputView: View {
    @Binding var text: String

    var body: some View {
        TextField("", text: $text)
            .keyboardType(.numberPad)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color.black.opacity(0.5), lineWidth: 1)
            )
    }
}

struct InputView_Previews: PreviewProvider {
    @State static var text = "TEST"

    static var previews: some View {
        InputView(text: $text)
    }
}
