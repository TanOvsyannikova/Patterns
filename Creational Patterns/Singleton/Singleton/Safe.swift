//
//  Safe.swift
//  Singleton
//
//  Created by Татьяна Овсянникова on 10.05.2021.
//

class Safe {
    static let shared = Safe()
    var money = 0
    
    private init() {}
}

