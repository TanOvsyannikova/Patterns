//
//  ViewController.swift
//  Singleton
//
//  Created by Татьяна Овсянникова on 10.05.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let safe = Safe.shared
        
        print(safe.money)
    }


}

