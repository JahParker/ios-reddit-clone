//
//  ContentView.swift
//  ios-reddit-clone
//
//  Created by Jah're Parker on 1/18/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack { // Header
            Button("Hamburger", systemImage: "line.3.horizontal") {
                
            }
            .labelStyle(.iconOnly)
            
            Text("Dropdown Menu")
            
            Spacer()
            
            Button("Search", systemImage: "magnifyingglass") {
                
            }
            .labelStyle(.iconOnly)
            
            Button("Profile", systemImage: "person.crop.circle.fill") {
                
            }
            .symbolRenderingMode(.hierarchical)
            .labelStyle(.iconOnly)
        }
        .padding(.horizontal)
        .font(.title3)
        .foregroundStyle(.white)
        
        Divider()
            .background(.gray)
        Spacer()
        
        Feed()
        
        Spacer()
        Divider()
            .background(.gray)
        
        HStack (spacing: 30) { // Footer
            Button {
                
            } label: {
                VStack {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            }
            
            Button {
                
            } label: {
                VStack {
                    Image(systemName: "person.2.circle")
                    Text("Communities")
                }
            }
            
            Button {
                
            } label: {
                VStack {
                    Image(systemName: "plus")
                    Text("Create")
                }
            }
            
            Button {
                
            } label: {
                VStack {
                    Image(systemName: "ellipsis.message")
                    Text("Chat")
                }
            }
            
            Button {
                
            } label: {
                VStack {
                    Image(systemName: "bell")
                    Text("Inbox")
                }
            }
        }
        .padding(.horizontal)
        .border(.black)
        .foregroundStyle(.white)
    }
}

#Preview {
    ContentView()
}
