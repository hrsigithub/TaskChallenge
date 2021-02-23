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

    private let prefectureNames =
        [
            "北海道", "青森県", "岩手県", "宮城県", "秋田県", "山形県", "福島県", "茨城県", "栃木県", "群馬県", "埼玉県",
            "千葉県", "東京都", "神奈川県", "新潟県", "富山県", "石川県", "福井県", "山梨県", "長野県", "岐阜県", "静岡県",
            "愛知県", "三重県", "滋賀県", "京都府", "大阪府", "兵庫県", "奈良県", "和歌山県", "鳥取県", "島根県", "岡山県",
            "広島県", "山口県", "徳島県", "香川県", "愛媛県", "高知県", "福岡県", "佐賀県", "長崎県", "熊本県", "大分県",
            "宮崎県", "鹿児島県", "沖縄県"
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
