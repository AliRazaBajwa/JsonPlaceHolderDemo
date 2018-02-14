//
//  PostManager.swift
//  JsonPlaceHolderDemo
//
//  Created by Ali Bajwa on 18/07/2017.
//  Copyright © 2017 SSASoft. All rights reserved.
//

import UIKit
import SwiftyJSON
import Alamofire

class PostManager: NSObject {
    
    func getPosts(onComplete: @escaping(([PostModel]?, String?) -> Void)) {
        
        let path = "https://jsonplaceholder.typicode.com/posts"
        
        Alamofire.request(path, method: .get, parameters: nil, encoding: URLEncoding.default, headers: nil).validate().responseJSON { response in
            if response.result.isSuccess {
                let jsonArray = JSON(response.result.value!).arrayValue
                let posts = PostModel.importPosts(jsonArray: jsonArray)
                onComplete(posts, nil)
            }
            else {
                onComplete(nil, "Error")
            }
        }
        
    }

}
