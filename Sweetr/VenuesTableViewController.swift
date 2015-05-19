//
//  VenuesTableViewController.swift
//  Sweetr
//
//  Created by Whitney Lauren on 5/18/15.
//  Copyright (c) 2015 Whitney Lauren. All rights reserved.
//

import UIKit
import CoreLocation

class VenuesTableViewController: UITableViewController {
    
    var fakeVenues: [AnyObject?] = [
        
        [
            "meta":["code":200],
            "response":
                ["venues":
                    [
                        ["id":"4c533f3930f92d7fc47074b8",
                        "name":"Pizza Hut",
                        "contact":[],
                        "location":
                            [
                                "address":"59 Broad St",
                                "lat":33.752965,
                                "lng":-84.392394,
                                "distance":17,
                                "cc":"US",
                                "city":"Atlanta",
                                "state":"GA",
                                "country":"United States",
                                "formattedAddress":["59 Broad St","Atlanta, GA","United States"]],
                                "categories":[["id":"4bf58dd8d48988d1ca941735",
                                "name":"Pizza Place",
                                "pluralName":"Pizza Places",
                                "shortName":"Pizza",
                                "icon":["prefix":"https:\\/\\/ss3.4sqi.net\\/img\\/categories_v2\\/food\\/pizza_","suffix":".png"],
                                "primary":true]],
                                "verified":false,
                                "stats":["checkinsCount":1,
                                "usersCount":1,
                                "tipCount":0],
                                "hasMenu":true,
                                "menu":["type":"Menu","label":"Menu","anchor":
                                "View Menu","url":"https:\\/\\/foursquare.com\\/v\\/pizza-hut\\/4c533f3930f92d7fc47074b8\\/menu","mobileUrl":"https:\\/\\/foursquare.com\\/v\\/4c533f3930f92d7fc47074b8\\/device_menu"],"specials":["count":0,"items":[]],"hereNow":["count":0,"summary":"Nobody here","groups":[]],"referralId":"v-1431978351"],
                        [
                        ["id":"50a53540e4b0d9744f1d22f2",
                        "name":"5 POINTS CUSTOME STYLES",
                        "contact":[],
                        "location":
                        [
                            "lat":33.752716064453125,
                            "lng":-84.39261627197266,
                            "distance":20,
                            "postalCode":"30303",
                            "cc":"US",
                            "city":"Atlanta",
                            "state":"GA",
                            "country":"United States",
                            "formattedAddress":["Atlanta, GA 30303","United States"]],
                            "categories":[["id":"4bf58dd8d48988d1ff941735",
                            "name":"Miscellaneous Shop",
                            "pluralName":"Miscellaneous Shops",
                            "shortName":"Shop",
                            "icon":["prefix":"https:\\/\\/ss3.4sqi.net\\/img\\/categories_v2\\/shops\\/default_","suffix":".png"],
                            "primary":true]],
                            "verified":false,
                            "stats":["checkinsCount":5,
                            "usersCount":4,"tipCount":0],
                            "specials":["count":0,
                            "items":[]],
                            "hereNow":["count":0,
                            "summary":"Nobody here",
                            "groups":[]],
                            "referralId":"v-1431978351"],
                            
                        [
                        ["id":"5408c0bc498e56004dd0ee7b",
                        "name":"China Breeze",
                        "contact":[],
                        "location":[
                            "address":"73 Broad Street",
                            "lat":33.752744,
                            "lng":-84.392217,
                            "distance":21,
                            "cc":"US",
                            "city":"Atlanta",
                            "state":"GA",
                            "country":"United States",
                            "formattedAddress":["73 Broad Street","Atlanta, GA","United States"]],
                            "categories":[["id":"4bf58dd8d48988d14e941735",
                            "name":"American Restaurant",
                            "pluralName":"American Restaurants",
                            "shortName":"American",
                            "icon":["prefix":"https:\\/\\/ss3.4sqi.net\\/img\\/categories_v2\\/food\\/default_",
                            "suffix":".png"],
                            "primary":true]],
                            "verified":false,
                            "stats":["checkinsCount":2,
                            "usersCount":1,
                            "tipCount":1],
                            "specials":[
                            "count":0,
                            "items":[]],
                            "hereNow":[
                            "count":0,
                            "summary":"Nobody here",
                            "groups":[]],"referralId":"v-1431978351"],
                            ["id":"5314b2dde4b0d805d3741323"
                                
                                ]
                            ]
                            ]
                        ]
                    ]
            ]
        ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        FourSquareRequest().getVenuesWithLocation(CLLocation(), completion: { (venues) -> Bool in
            
        
      
            
            
            //code to be run when completion block is fired
            println(venues)
            
            return true
        
        })

        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
            }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 0
    }

    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! UITableViewCell

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}












