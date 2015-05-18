//
//  Requests.swift
//  Sweetr
//
//  Created by Whitney Lauren on 5/18/15.
//  Copyright (c) 2015 Whitney Lauren. All rights reserved.
//

import Foundation
import CoreLocation


class FourSquareRequest {
    
    let API_URL = "https://api.foursquare.com/v2/"
    let CLIENT_SECRET = "44G3OQYYGB0YUR1YP1NQHGOBFQZIZJJWWVMT4FNDLF1QDP1Q"
    let CLIENT_ID = "1KEKHZROTGNXKDAWRNGIQYYNY4JD3O1K2K334EH4LL0FGGJU"
    
    func getVenuesWithLocation(location: CLLocation, completion: (venues: [AnyObject]) -> Bool) {
     
        //venues empty array
        var venues: [AnyObject] = []
        
        
        //run completion closure/block and pass venues array
        var usedVenues = completion(venues: venues)
    
   
    }


}

class TwitterRequest {
    
    let API_URL = "“https://api.twitter.com/1.1/"
    
    
    
    func findPopularFoodTweets(completion: (tweets: [AnyObject]) -> ()) {
        
        let foundTweets: [AnyObject] = []
        
        
        let endpoint = API_URL + "search/tweets.json?q=Food&result_type=popular"
        
        if let url = NSURL(string: endpoint) {
            
            let request = NSURLRequest(URL: url)
            
            NSURLConnection.sendAsynchronousRequest(request, queue: NSOperationQueue.mainQueue(), completionHandler: { (response, data, error) -> Void in
                
                var error: NSError? = nil
            
                if let tweets = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &error) as? [AnyObject] {
                   
                    completion(tweets: tweets)
                    
                }
        
                if let error = error {
                    println(error)
                }
            
            })
            
        }
        
        
    }

}






