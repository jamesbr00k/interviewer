//
//  PersonDetailVIew.swift
//  Interviewer
//
//  Created by James Brook on 25/03/2023.
//

import SwiftUI

import SwiftUI

struct PersonDetailView: View {
    @State private var selectedPrompts: [Int] = []
    @State private var showingSources = false
    
    let person: Person
    
    var body: some View {
        VStack {
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    ForEach(selectedPrompts, id: \.self) { index in
                        MessageGroupView(messageGroup: person.messageGroups[index])
                    }
                }
            }
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<person.messageGroups.count, id: \.self) { index in
                        if !selectedPrompts.contains(index) {
                            Button(action: {
                                selectedPrompts.append(index)
                            }) {
                                Text(person.messageGroups[index].prompt)
                                    .padding()
                                    .background(Color.blue)
                                    .foregroundColor(.white)
                                    .cornerRadius(8)
                            }
                        }
                    }
                }
            }
            .padding()
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                HStack {
                    Image(person.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 40)
                        .clipShape(Circle())
                        .padding(.trailing, 8)
                    
                    Text(person.name)
                        .font(.headline)
                }
            }
            
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {
                    showingSources.toggle()
                }) {
                    Image(systemName: "info.circle")
                }
                .sheet(isPresented: $showingSources) {
                    SourcesView(sources: person.sources)
                }
            }
        }
    }
}

struct MessageGroupView: View {
    let messageGroup: MessageGroup
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ForEach(messageGroup.messages) { message in
                MessageView(message: message)
            }
        }
    }
}


struct MessageView: View {
    let message: Message
    
    var body: some View {
        HStack {
            if message.messageType == .Sender {
                Text(message.content)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .foregroundColor(Color("Color"))
                Spacer()
            } else if message.messageType == .Me {
                Spacer()
                Text(message.content)
                    .padding()
                    .background(Color.blue.opacity(0.7))
                    .cornerRadius(10)
                    .foregroundColor(.white)
            } else {
                Spacer()
                Text(message.content)
                    .padding()
                    .font(.footnote)
                Spacer()
            }
        }
        .padding(.horizontal, 8)
    }
}

struct SourcesView: View {
    let sources: [String]
    
    var body: some View {
        NavigationView {
            List(sources, id: \.self) { source in
                Text(source)
            }
            .navigationTitle("Sources")
            .listStyle(InsetGroupedListStyle())
        }
    }
}
