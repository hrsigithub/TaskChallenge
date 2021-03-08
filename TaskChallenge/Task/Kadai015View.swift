//
//  Kadai015View.swift
//  TaskChallenge
//
//  Created by Hiroshi.Nakai on 2021/03/09.
//

import SwiftUI

struct Kadai015View: View {
    @State  var tasks: [Task] = [
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
                    ForEach(tasks.indices, id: \.self) { index in
                        HStack {
                            Kadai015.CheckViewRow(task: $tasks[index])
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
            Kadai015.TaskDetialView(
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

struct Kadai015 {
    struct CheckViewRow: View {
        @Binding var task: Task

        var body: some View {
            Button(action: {
                task.isDone.toggle()
            }) {
                if task.isDone {
                    Image(systemName: "checkmark")
                        .foregroundColor(.red)
                } else {
                    Image(systemName: "checkmark")
                        .hidden()
                }
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

struct Kadai015View_Previews: PreviewProvider {
    static var previews: some View {
        Kadai015View()
    }
}
