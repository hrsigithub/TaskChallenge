//
//  Kadai010View.swift
//  TaskChallenge
//
//  Created by Hiroshi.Nakai on 2021/02/23.
//

import SwiftUI

struct Kadai010View: View {

    private let cellColors = [
        Color(red: 0.852, green: 0.948, blue: 0.75, opacity: 1.0),
        Color(red: 0.705, green: 0.851, blue: 0.896, opacity: 1.0),
        Color(red: 0.951, green: 0.704, blue: 0.748, opacity: 1.0)
    ]

    var body: some View {
        VStack {
            List {
                ForEach(0..<prefectureNames.count) { index in
                    HStack {
                        Text(prefectureNames[index])
                        Spacer()
                        Text("\(index + 1)番目の都道府県です")
                    }
                    .listRowInsets(.init(top: 0, leading: 2, bottom: 0, trailing: 2))
                    .frame(width: nil, height: 35, alignment: .center)
                    .background(cellColors[index % cellColors.count])
                }
            }.environment(\.defaultMinListRowHeight, 0)
        }
    }
}

struct Kadai010View_Previews: PreviewProvider {
    static var previews: some View {
        Kadai010View()
    }
}
