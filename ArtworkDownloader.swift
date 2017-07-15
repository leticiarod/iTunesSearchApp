//
//  ArtworkDownloader.swift
//  iTunesClient
//
//  Created by Leticia Rodriguez on 7/15/17.
//  Copyright © 2017 Leticia Rodriguez. All rights reserved.
//

import Foundation
import UIKit

class ArtoworkDownloader: Operation {
    let album: Album
    
    init(album: Album){
        self.album = album
        super.init()
    }
    
    override func main() {
        if self.isCancelled{
            return
        }
        
        guard let url = URL(string: album.artworkUrl) else {
            return
        }
        
        let imageData = try! Data(contentsOf: url)
        
        if imageData.count > 0 {
            album.artwork = UIImage(data: imageData)
            album.artoworkState = .downloaded
        }
        else {
            album.artoworkState = .failed
        }
    }
}
