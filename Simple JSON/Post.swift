//
//  Post.swift
//  Honest Reviews
//
//  Created by Arjun on 15/11/14.
//  Copyright (c) 2014 Techulus. All rights reserved.
//

import Foundation

class Post {
    var id : Int
    var title : String
    var rating : Float
    var releaseYear : Int
    var image : String
    
    init(id:Int, title:String, rating:Float, releaseYear:Int, image: String) {
        self.id = id
        self.title = title
        self.rating = rating
        self.releaseYear = releaseYear
        self.image = image
    }
    
    func toJSON() -> String {
        return ""
    }
}