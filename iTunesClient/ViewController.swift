//
//  ViewController.swift
//  iTunesClient
//
//  Created by Leticia Rodriguez on 7/15/17.
//  Copyright © 2017 Leticia Rodriguez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let searchEndpoint = Itunes.search(term: "taylor swift", media: .music(entity: .musicArtist, attribute: .artistTerm))
        print(searchEndpoint.request)
        
        print("*************")
        
        let lookupEndpoint = Itunes.lookup(id: 159260351, entity: MusicEntity.album)
        print(lookupEndpoint.request)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

