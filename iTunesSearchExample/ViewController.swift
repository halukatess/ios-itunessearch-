//
//  ViewController.swift
//  iTunesSearchExample
//
//  Created by Haluk Ates on 19.07.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        doSearchByTerm(term: "taylor+swift")
    }
    
    private func doSearchByTerm(term: String) {
        
        Network.shared.request(url: "https://itunes.apple.com/search?term=\(term)") { result in
            switch result {
            case .success(let success):
                print(success)
            case .failure(let failure):
                print(failure)
            }
        }
    }


}

