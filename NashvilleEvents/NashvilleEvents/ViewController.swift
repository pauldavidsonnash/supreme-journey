//
//  ViewController.swift
//  NashvilleEvents
//
//  Created by Christopher Constable on 6/10/16.
//
//

import UIKit

// TODO: This should be moved to it's own file
class Event {
    let name: String
    let ticketInfo: String
    
    init(name: String, ticketInfo: String) {
        self.name = name
        self.ticketInfo = ticketInfo
    }
}

class ViewController: UIViewController, UITableViewDataSource {
    
    var events: [Event] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.whiteColor()
        self.title = "Events"
        
//        if let jsonFileName = NSBundle.mainBundle().pathForResource("feed", ofType: "json"),
//            let jsonData = NSData(contentsOfFile: jsonFileName),
//            let json = try? NSJSONSerialization.JSONObjectWithData(jsonData, options: []),
//            let events = json["events"] as? [AnyObject] {
//            self.events = []
//            
//            for event in events {
//                if let event = event as? [String: String] {
//                    let eventObject = Event()
//                    eventObject.name = event["Name"]
//                    eventObject.ticketInfo = event["TicketInfo"]
//                    self.events?.append(eventObject)
//                }
//            }
//            
//            print(self.events?.count)
//        }
        
        // Fake the data
        self.events = [
            Event(
                name: "Ray Wylie Hubbard w/Aaron Lee Tasjan",
                ticketInfo: "$10"
            ),
            Event(
                name: "Alex Kramer Live w/Kristin Kelly, Ashley McBryde & Rachel Holder",
                ticketInfo: "free"
            ),
            Event(
                name: "Bizz w/T Shay, Kenneth Wright & Dante Marsh",
                ticketInfo: "free"
            )
        ]
        
        let tableView = UITableView(frame: self.view.bounds)
        
        // We are going to act as the table's data source
        tableView.dataSource = self
        
        self.view.addSubview(tableView)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.events.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        
        
        let row = indexPath.row
        let event = self.events[row]
        cell.textLabel?.text = event.name
        
        return cell
    }
}

