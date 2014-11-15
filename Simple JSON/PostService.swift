//
//  PostService.swift
//  Honest Reviews
//
//  Created by Arjun on 15/11/14.
//  Copyright (c) 2014 Techulus. All rights reserved.
//

import Foundation

class PostService {
    
    var settings : Settings!
    
    init() {
        self.settings = Settings()
    }
    
    func getPosts(callback :(NSArray) -> ()) {
        request(settings.viewPosts, callback: callback)
    }
    
    func request(url:String, callback:(NSArray) -> ()) {
        var nsURl = NSURL(string: url)

        let task = NSURLSession.sharedSession().dataTaskWithURL(nsURl!, completionHandler: { (data, response, error) -> Void in
            
            if (error != nil) {
                println("API error: \(error), \(error.userInfo)")
            }
            var jsonError:NSError?
            var json:NSArray = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &jsonError) as NSArray
            if (jsonError != nil) {
                println("Error parsing json: \(jsonError)")
            }
            else {
                let title:String! = json[0]["title"] as? String
                println(json[0]["title"])
            }
            callback(json)
            //var error:NSError?
            //var response = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &error) as NSDictionary
            //callback(response)
           
        })
        task.resume()
    }
}