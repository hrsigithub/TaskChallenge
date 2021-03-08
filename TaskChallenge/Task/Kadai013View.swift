//
//  Kadai013View.swift
//  TaskChallenge
//
//  Created by Hiroshi.Nakai on 2021/02/25.
//

import SwiftUI

struct Kadai013View: View {
    private var tasks: [Task] = [
        .init(name: "りんご", isDone: false),
        .init(name: "みかん", isDone: true),
        .init(name: "バナナ", isDone: false),
        .init(name: "パイナップル", isDone: true)
  ]

    var body: some View {
        VStack {
            List {
                ForEach(tasks) { task in
                    HStack {
                        CheckView(isDone: task.isDone)
                        Text(task.name)
                        Spacer()
                    }
                }
            }
        }
    }
}

struct CheckView: View {
    let isDone: Bool

    var body: some View {
        if isDone {
            Image(systemName: "checkmark")
                .foregroundColor(.red)
        } else {
            Image(systemName: "checkmark")
                .hidden()
        }
    }
}

struct Kadai013View_Previews: PreviewProvider {
    static var previews: some View {
        Kadai013View()
    }
}
