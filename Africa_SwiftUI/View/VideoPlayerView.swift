
import SwiftUI
import AVKit

struct VideoPlayerView: View {
  // MARK: - PROPERTIES
  
  var videoSelected: String
  var videoTitle: String

  // MARK: - BODY

  var body: some View {
    VStack {
        if let player = playVideo(fileName: videoSelected, fileFormat: "mp4") {
                       VideoPlayer(player: player)
                           .overlay(
                               Image("logo")
                                   .resizable()
                                   .scaledToFit()
                                   .frame(width: 32, height: 32)
                                   .padding(.top, 6)
                                   .padding(.horizontal, 8)
                               ,alignment: .topLeading
                               )
                   } else {
                       Text("Unable to play video")
                           .foregroundColor(.red)
                           .font(.title2)
                   }
    } //: VSTACK
    .accentColor(.accentColor)
    .navigationBarTitle(videoTitle, displayMode: .inline)
  }
}

// MARK: - PREVIEW

struct VideoPlayerView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
    }
  }
}
