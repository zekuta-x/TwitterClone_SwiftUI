//
//  Message.swift
//  TwitterSwiftUI
//
//  Created by 鳥山英峻 on 2022/02/08.
//

import Foundation

struct Mockmessage: Identifiable{
    let id: Int
    let imageName: String
    let messageText: String
    let isCurrentUser: Bool
}

let MOCK_MESSAGES: [Mockmessage] = [
    .init(id: 0, imageName: "Donald", messageText: "MC's number1!", isCurrentUser: false),
    .init(id: 1, imageName: "ColonelSanders", messageText: "NO, currect is KFC", isCurrentUser: true),
    .init(id: 2, imageName: "ColonelSanders", messageText: "This, answer", isCurrentUser: true),
    .init(id: 3, imageName: "Donald", messageText: "What?", isCurrentUser: false),
    .init(id: 4, imageName: "Donald", messageText: "Repeat, MC's number1!", isCurrentUser: false),
    .init(id: 5, imageName: "ColonelSanders", messageText: "KFC's number1!", isCurrentUser: true),
]
