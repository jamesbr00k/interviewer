//
//  ContentView.swift
//  Interviewer
//
//  Created by James Brook on 25/03/2023.
//

import SwiftUI

struct Person: Identifiable {
    let id = UUID()
    let name: String
    let messageGroups: [MessageGroup]
    let sources: [String]
    let imageName: String
}


struct MessageGroup: Identifiable {
    let id = UUID()
    let prompt: String
    var messages: [Message]
}

struct Message: Identifiable {
    let id = UUID()
    let content: String
    let messageType: Sender
}


enum Sender: Int {
    case Sender = 1
    case Context = 2
    case Me = 3
    
    var alignment: Alignment {
        switch self {
        case .Sender:
            return .trailing
        case .Context:
            return .center
        case .Me:
            return .leading
        }
    }
}

struct ContentView: View {
    var body: some View {
        PersonListView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
