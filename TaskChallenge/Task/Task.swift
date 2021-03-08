//
//  Task.swift
//  TaskChallenge
//
//  Created by Hiroshi.Nakai on 2021/03/08.
//

import Foundation

struct Task: Identifiable {
    var id = UUID()
    var name: String
    var isDone: Bool
}
