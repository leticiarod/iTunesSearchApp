//
//  QueryItemProvider.swift
//  iTunesClient
//
//  Created by Leticia Rodriguez on 7/15/17.
//  Copyright © 2017 Leticia Rodriguez. All rights reserved.
//

import Foundation

protocol QueryItemProvider {
    var queryItem: URLQueryItem { get }
}
