//
//  VideoPlayerHelper.swift
//  Africa_SwiftUI
//
//  Created by André Almeida on 2022-07-18.
//

import Foundation
import AVKit
 
func playVideo(fileName: String, fileFormat: String) -> AVPlayer? {
    guard let url: URL = Bundle.main.url(forResource: fileName, withExtension: fileFormat) else {
        return nil
    }
    
    let videoPlayer: AVPlayer = AVPlayer(url: url)
    
    videoPlayer.play()
    return videoPlayer
}
