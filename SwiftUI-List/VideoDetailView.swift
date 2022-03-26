//
//  VideoDetailView.swift
//  SwiftUI-List
//
//  Created by Yash-Langaliya on 11/03/22.
//

import SwiftUI

struct VideoDetailView: View {
    var video: Video
    var body: some View {
        VStack(spacing: 20) {
            
            Spacer()
            
            Image(video.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 150)
                .cornerRadius(12)
            
            Text(video.title)
                .fontWeight(.bold)
                .padding(.horizontal)
                .multilineTextAlignment(.center)
            
            HStack {
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .foregroundColor(.secondary)
                    .font(.subheadline)
                Spacer()
                Text("\(video.uploadDate)")
                    .foregroundColor(.secondary)
                    .font(.subheadline)
            }
            
            Text(video.description)
            
            Spacer()
            
            Link(destination: video.url) {
                Text("Watch Now!")
                     .font(.system(size: 26, weight: .semibold))
                     .foregroundColor(.white)
                     .frame(width: 280, height: 50)
                     .background(Color.red)
                     .cornerRadius(8)
            }
        }.padding(25)
        
    }
}

struct VideoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(video: VideoList.topTen.first!)
    }
}
