//
//  Feed.swift
//  ios-reddit-clone
//
//  Created by Jah're Parker on 1/18/24.
//

import SwiftUI
let posts: [Post] = [
    Post(subredditImage: "tv.circle.fill", subredditName: "r/cordcutters", age: "8h", title: "Which is better: Amazon Fire TV or Roku?", content: "I am trying to break away from my reliance on the Big 4 streamers: Google(YouTube TV), Apple, Amazon, and Netflix. For the last several years, I have used nothing but Amazon Fire. I am currently looking at switching over to Roku. And I am wondering if it can hold its own just fine. The internet service I have does offer a streaming TV app that is not available in the Amazon Appstore. But it is listed as available for use in the Roku store. I am very tempted to switch over. Is abandoning ship from the Big 4 worth it?", upvotes: 51, comments: 146, shares: 21),
    Post(subredditImage: "tv.circle.fill", subredditName: "r/cordcutters", age: "8h", title: "Which is better: Amazon Fire TV or Roku?", content: "I am trying to break away from my reliance on the Big 4 streamers: Google(YouTube TV), Apple, Amazon, and Netflix. For the last several years, I have used nothing but Amazon Fire. I am currently looking at switching over to Roku. And I am wondering if it can hold its own just fine. The internet service I have does offer a streaming TV app that is not available in the Amazon Appstore. But it is listed as available for use in the Roku store. I am very tempted to switch over. Is abandoning ship from the Big 4 worth it?", upvotes: 51, comments: 146, shares: 21),
    Post(subredditImage: "tv.circle.fill", subredditName: "r/cordcutters", age: "8h", title: "Which is better: Amazon Fire TV or Roku?", content: "I am trying to break away from my reliance on the Big 4 streamers: Google(YouTube TV), Apple, Amazon, and Netflix. For the last several years, I have used nothing but Amazon Fire. I am currently looking at switching over to Roku. And I am wondering if it can hold its own just fine. The internet service I have does offer a streaming TV app that is not available in the Amazon Appstore. But it is listed as available for use in the Roku store. I am very tempted to switch over. Is abandoning ship from the Big 4 worth it?", upvotes: 51, comments: 146, shares: 21),
    Post(subredditImage: "tv.circle.fill", subredditName: "r/cordcutters", age: "8h", title: "Which is better: Amazon Fire TV or Roku?", content: "I am trying to break away from my reliance on the Big 4 streamers: Google(YouTube TV), Apple, Amazon, and Netflix. For the last several years, I have used nothing but Amazon Fire. I am currently looking at switching over to Roku. And I am wondering if it can hold its own just fine. The internet service I have does offer a streaming TV app that is not available in the Amazon Appstore. But it is listed as available for use in the Roku store. I am very tempted to switch over. Is abandoning ship from the Big 4 worth it?", upvotes: 51, comments: 146, shares: 21),
    Post(subredditImage: "tv.circle.fill", subredditName: "r/cordcutters", age: "8h", title: "Which is better: Amazon Fire TV or Roku?", content: "I am trying to break away from my reliance on the Big 4 streamers: Google(YouTube TV), Apple, Amazon, and Netflix. For the last several years, I have used nothing but Amazon Fire. I am currently looking at switching over to Roku. And I am wondering if it can hold its own just fine. The internet service I have does offer a streaming TV app that is not available in the Amazon Appstore. But it is listed as available for use in the Roku store. I am very tempted to switch over. Is abandoning ship from the Big 4 worth it?", upvotes: 51, comments: 146, shares: 21),
    Post(subredditImage: "tv.circle.fill", subredditName: "r/cordcutters", age: "8h", title: "Which is better: Amazon Fire TV or Roku?", content: "I am trying to break away from my reliance on the Big 4 streamers: Google(YouTube TV), Apple, Amazon, and Netflix. For the last several years, I have used nothing but Amazon Fire. I am currently looking at switching over to Roku. And I am wondering if it can hold its own just fine. The internet service I have does offer a streaming TV app that is not available in the Amazon Appstore. But it is listed as available for use in the Roku store. I am very tempted to switch over. Is abandoning ship from the Big 4 worth it?", upvotes: 51, comments: 146, shares: 21),
    Post(subredditImage: "tv.circle.fill", subredditName: "r/cordcutters", age: "8h", title: "Which is better: Amazon Fire TV or Roku?", content: "I am trying to break away from my reliance on the Big 4 streamers: Google(YouTube TV), Apple, Amazon, and Netflix. For the last several years, I have used nothing but Amazon Fire. I am currently looking at switching over to Roku. And I am wondering if it can hold its own just fine. The internet service I have does offer a streaming TV app that is not available in the Amazon Appstore. But it is listed as available for use in the Roku store. I am very tempted to switch over. Is abandoning ship from the Big 4 worth it?", upvotes: 51, comments: 146, shares: 21),
    Post(subredditImage: "tv.circle.fill", subredditName: "r/cordcutters", age: "8h", title: "Which is better: Amazon Fire TV or Roku?", content: "I am trying to break away from my reliance on the Big 4 streamers: Google(YouTube TV), Apple, Amazon, and Netflix. For the last several years, I have used nothing but Amazon Fire. I am currently looking at switching over to Roku. And I am wondering if it can hold its own just fine. The internet service I have does offer a streaming TV app that is not available in the Amazon Appstore. But it is listed as available for use in the Roku store. I am very tempted to switch over. Is abandoning ship from the Big 4 worth it?", upvotes: 51, comments: 146, shares: 21)
]

struct Feed: View {
    var body: some View {
        ScrollView {
            ForEach(posts, id: \.id) { post in
                PostView(post: post)
            }
        }
    }
}

#Preview {
    Feed()
}

struct Post: Identifiable {
    let id = UUID()
    
    // Ideally, I would set all of these to var
    let subredditImage: String
    let subredditName: String
    let age: String // and set this as an Int
    let title: String
    let content: String
    let upvotes: Int
    let comments: Int
    let shares: Int
}

struct PostView: View {
    let post: Post
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: post.subredditImage)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Text(post.subredditName)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(post.age)
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .padding()
            }
            
            VStack(alignment: .leading) {
                Text(post.title)
                    .font(.headline)
                Text(post.content)
                    .font(.caption)
                    .lineLimit(4)
            }
            
            HStack {
                HStack{
                    Button {
                        
                    } label: {
                        Image(systemName: "arrowshape.up")
                        Text("\(post.upvotes)")
                    }
                   
                    Divider()
                        .background(.separator)
                        .frame(height: 15)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "arrowshape.down")
                    }
                }
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .overlay(
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .stroke(.separator, lineWidth: 1))
                .font(.caption)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "bubble")
                        Text("\(post.comments)")
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .overlay(
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .stroke(.separator, lineWidth: 1))
                    .font(.caption)
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "arrowshape.turn.up.right")
                        Text("Share")
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .overlay(
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                            .stroke(.separator, lineWidth: 1))
                    .font(.caption)
            }
            .foregroundStyle(.white)
        }
        .padding(.horizontal)
    }
}
