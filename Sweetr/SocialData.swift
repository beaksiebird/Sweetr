//
//  SocialData.swift
//  Sweetr
//
//  Created by Whitney Lauren on 5/18/15.
//  Copyright (c) 2015 Whitney Lauren. All rights reserved.
//

import UIKit

private let _singleton = SocialData()

class SocialData: NSObject {
    
    var twitterName = ""
    
    class func mainData() -> SocialData { return _singleton }
    
    
    

   
}
