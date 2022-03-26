//
//  VideoListView.swift
//  SwiftUI-List
//
//  Created by Yash-Langaliya on 11/03/22.
//

import SwiftUI

struct VideoListView: View {
    var videos: [Video] = VideoList.topTen
    var body: some View {
        NavigationView {
            
            List(videos, id: \.id) { item in
                NavigationLink(destination: VideoDetailView(video: item)) {
                    VideoCell(item: item)
                }
            }.navigationTitle("Top Videos")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}

struct VideoCell: View {
    
    var item: Video
    
    var body: some View {
        HStack {
            Image(item.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 70)
                .cornerRadius(5)
                .padding(.vertical, 10)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(item.title)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .minimumScaleFactor(0.5)
                
                Text(item.uploadDate)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
        }
    }
}
