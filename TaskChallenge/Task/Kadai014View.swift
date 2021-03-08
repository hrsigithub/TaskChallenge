//
//  Kadai014View.swift
//  TaskChallenge
//
//  Created by Hiroshi.Nakai on 2021/03/08.
//

import SwiftUI

struct Kadai014View: View {
    @State private var tasks: [Task] = [
        .init(name: "りんご", isDone: false),
        .init(name: "みかん", isDone: true),
        .init(name: "バナナ", isDone: false),
        .init(name: "パイナップル", isDone: true)
    ]
    @State private var isShowModal = false
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(tasks) { task in
                        HStack {
                            Kadai014.CheckViewRow(task: task)
                        }
                    }
                }
                .navigationBarItems(trailing: Button(action: {
                    isShowModal = true
                }) {
                    Text("+")
                        .font(.largeTitle)
                })
            }
        }
        .sheet(isPresented: $isShowModal, content: {
            Kadai014.TaskDetialView(
                didTapSave: { name in
                    guard !name.isEmpty else { return }
                    tasks.append(Task(name: name, isDone: false))
                    isShowModal = false
                },
                didTapCancel: {
                    isShowModal = false
                }
            )
        })
    }
}

struct Kadai014 {
    struct CheckViewRow: View {
        var task: Task
        var body: some View {
            if task.isDone {
                Image(systemName: "checkmark")
                    .foregroundColor(.red)
            } else {
                Image(systemName: "checkmark")
                    .hidden()
            }
            Text(task.name)
            Spacer()
        }
    }

    struct TaskDetialView: View {
        @State private var name: String = ""
        let didTapSave: (String) -> Void
        let didTapCancel: () -> Void
        var body: some View {
            VStack {
                HStack {
                    Button("Cancel") {
                        didTapCancel()
                    }
                    Spacer()
                    Button("Save") {
                        didTapSave(name)
                    }
                }.padding()
                HStack {
                    Text("名前")
                    TextField("", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 100)
                }
                Spacer()
            }
        }
    }
}

struct Kadai014View_Previews: PreviewProvider {
    static var previews: some View {
        Kadai014View()
    }
}
 
