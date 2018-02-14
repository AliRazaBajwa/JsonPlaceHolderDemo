//
//  PostModel.swift
//  JsonPlaceHolderDemo
//
//  Created by Ali Bajwa on 18/07/2017.
//  Copyright © 2017 SSASoft. All rights reserved.
//

import UIKit
import SwiftyJSON

class PostModel: NSObject {
    
    var userId: Int
    var id: Int
    var title: String
    var body: String
    
    init(userId: Int, id: Int, title: String, body: String) {
        self.userId = userId
        self.id = id
        self.title = title
        self.body = body
    }
    
    init(json: JSON) {
        self.userId = json["userId"].intValue
        self.id = json["id"].intValue
        self.title = json["title"].stringValue
        self.body = json["body"].stringValue
    }
    
    static func importPosts(jsonArray: [JSON]) -> [PostModel] {
        var postList: [PostModel] = []
        for json in jsonArray {
            
            //1 object
            let post = PostModel(json: json)
            
            postList.append(post)
        }
        return postList
    }

}
