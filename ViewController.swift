//
//  ViewController.swift
//  Assignment-1-API
//
//  Created by Anish Acharya on 2023-05-23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func getInshortsAPIData(_ sender: Any) {
        Task {
                    print("Inshorts API Data: ")
                    print(await Inshorts_Helper.fetch())
                    }
    }
    @IBAction func getSpaceflightNewsAPI(_ sender: Any) {
        Task {
            print("SpaceflightNews Facts API Data: ")
            print(await SpaceflightNewsAPIHelper.fetch())
            }
    }
    
    
    @IBAction func getRusQuoteAPIData(_ sender: Any) {
        Task {
            print("Rus Quote API Data: ")
            print(await RusQuoteAPI_Helper.fetch())
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

