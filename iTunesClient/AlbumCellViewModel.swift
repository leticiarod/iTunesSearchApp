//
//  AlbumCellViewModel.swift
//  iTunesClient
//
//  Created by Leticia Rodriguez on 7/15/17.
//  Copyright © 2017 Leticia Rodriguez. All rights reserved.
//

import Foundation


struct AlbumCellViewModel {
    let title: String
    let releaseDate: String
    let genre: String
}

extension AlbumCellViewModel {
    init(album: Album){
        self.title = album.censoredName
        self.genre = album.primaryGenre.name
        
        let formatter = DateFormatter()
        formatter.locale = Locale.current
        formatter.dateFormat = "MMM dd, yyyy"
        
        self.releaseDate = formatter.string(from: album.releaseDate)
    }
}
