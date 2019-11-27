//
//  ViewController.swift
//  IOSAddEventTutorial
//
//  Created by 邹俊 on 2019/1/12.
//  Copyright © 2019 邹俊. All rights reserved.
//

import UIKit
import EventKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let eventStore = EKEventStore()
        
        switch EKEventStore.authorizationStatus(for: .event) {
        case .authorized:
            insert(store: eventStore)
            
            
            
        case .denied:
            print("denied")
            
            
        case .notDetermined:
            eventStore.requestAccess(to: .event) { [weak self] (granted: Bool, error: Error?) in
                if granted {
                    self!.insert(store: eventStore)
                } else {
                    print("denied")
                }
            }
            

        default:
            print("aaa")
            
        }
        
    }
    
    
    func insert(store: EKEventStore) {
        
        let calendars = store.calendars(for: .event)
        
        for calendar in calendars {
            if calendar.title == "ioscreator" {
                let startDate = Date()
                
                let endDate = startDate.addingTimeInterval(2 * 60 * 60)
                
                
                let event = EKEvent(eventStore: store)
                
                event.calendar = calendar
                event.title = "New Meeting"
                
                event.startDate = startDate
                event.endDate = endDate
                
                
                do {
                    try store.save(event, span: .thisEvent)
                    
                } catch {
                    print("catch")
                }
            }
            
        }
        
    }


}

