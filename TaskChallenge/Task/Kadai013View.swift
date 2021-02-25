//
//  Kadai013View.swift
//  TaskChallenge
//
//  Created by Hiroshi.Nakai on 2021/02/25.
//

import SwiftUI

struct Task: Identifiable {
    var id = UUID()
    var fruitsName: String
    var isDone: Bool
}

struct Kadai013View: View {
    private var tasks: [Task] = [
        .init(fruitsName: "りんご", isDone: false),
        .init(fruitsName: "みかん", isDone: true),
        .init(fruitsName: "バナナ", isDone: false),
        .init(fruitsName: "パイナップル", isDone: true)
  ]

    var body: some View {
        VStack {
            List {
                ForEach(tasks) { task in
                    HStack {
                        CheckView(isDone: task.isDone)
                        Text(task.fruitsName)
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
