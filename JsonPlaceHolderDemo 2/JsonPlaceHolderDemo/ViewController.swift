//
//  ViewController.swift
//  JsonPlaceHolderDemo
//
//  Created by Ali Bajwa on 18/07/2017.
//  Copyright © 2017 SSASoft. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let postManager = PostManager()
        postManager.getPosts { (posts, error) in
            if error == nil {
                for post in posts!{
                print(post.id)
                }
            }
            else {
                print(error)
            }
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

