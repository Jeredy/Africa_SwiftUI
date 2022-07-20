//
//  VideoModel.swift
//  Africa_SwiftUI
//
//  Created by André Almeida on 2022-07-18.
//

import SwiftUI

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computer Property
    var thumbnail: String {
        "video-\(id)"
    }
}

