//
//  Kadai009View.swift
//  TaskChallenge
//
//  Created by Hiroshi.Nakai on 2021/02/22.
//

import SwiftUI

struct Kadai009View: View {
    @State private var isShowModal = false
    @State private var prefName: String?

    var body: some View {
        VStack {
            HStack {
                Text("都道府県").font(.title3).padding()
                Text(prefName ?? "未選択").font(.title3).padding()
                Button("入力") {
                    isShowModal.toggle()

                }.sheet(isPresented: $isShowModal
                ) {
                    PrefecturesView(isShowModal: $isShowModal, selectPref: $prefName)
                }
            }
            Spacer()
        }
    }
}

struct PrefecturesView: View {

    @State private var prefectureNames =
        ["東京都", "神奈川県", "埼玉県", "千葉県"]

    @Binding var isShowModal: Bool
    @Binding var selectPref: String?

    var body: some View {
        VStack {
            HStack {
                Button("Cancel") {
                    isShowModal.toggle()
                }
                Spacer()
            }.padding()

            VStack {
                List {
                    ForEach(prefectureNames, id: \.self) { name in
                        Button("\(name)") {
                            selectPref = name
                            isShowModal.toggle()
                        }
                    }
                }
            }
            Spacer()
        }
    }
}

struct Kadai009View_Previews: PreviewProvider {
    static var previews: some View {
        Kadai009View()
    }
}
