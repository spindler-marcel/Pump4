//
//  UebungenMuskelgruppenTableViewController.swift
//  Pump4
//
//  Created by Marcel Spindler on 30.04.16.
//  Copyright © 2016 Marcel Spindler. All rights reserved.
//

import UIKit

class UebungenMuskelgruppenTableViewController: UITableViewController {

    var mgdContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    var uebungen = [Uebung]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if let uvc = segue.destinationViewController as? UebungenAnzeigenViewController {
            if let identifier = segue.identifier{
                switch identifier{
                case "Brust":
                    let request = NSFetchRequest(entityName: "Uebung")
                    
                    request.predicate = NSPredicate(format: "muskel == %@", "Brust")
                    do{
                        try uebungen = mgdContext.executeFetchRequest(request) as! [Uebung]
                    }
                    catch{
                        print("Abfrage fehlgeschlagen!")
                    }
                    uvc.request2 = request
                case "Rücken":
                    let request = NSFetchRequest(entityName: "Uebung")
                    
                    request.predicate = NSPredicate(format: "muskel == %@", "Rücken")
                    do{
                        try uebungen = mgdContext.executeFetchRequest(request) as! [Uebung]
                    }
                    catch{
                        print("Abfrage fehlgeschlagen!")
                    }
                    uvc.request2 = request
                case "Beine":
                    let request = NSFetchRequest(entityName: "Uebung")
                    
                    request.predicate = NSPredicate(format: "muskel == %@", "Beine")
                    do{
                        try uebungen = mgdContext.executeFetchRequest(request) as! [Uebung]
                    }
                    catch{
                        print("Abfrage fehlgeschlagen!")
                    }
                    uvc.request2 = request
                case "Schultern":
                    let request = NSFetchRequest(entityName: "Uebung")
                    
                    request.predicate = NSPredicate(format: "muskel == %@", "Schultern")
                    do{
                        try uebungen = mgdContext.executeFetchRequest(request) as! [Uebung]
                    }
                    catch{
                        print("Abfrage fehlgeschlagen!")
                    }
                    uvc.request2 = request
                case "Bizeps":
                    let request = NSFetchRequest(entityName: "Uebung")
                    
                    request.predicate = NSPredicate(format: "muskel == %@", "Bizeps")
                    do{
                        try uebungen = mgdContext.executeFetchRequest(request) as! [Uebung]
                    }
                    catch{
                        print("Abfrage fehlgeschlagen!")
                    }
                    uvc.request2 = request
                case "Trizeps":
                    let request = NSFetchRequest(entityName: "Uebung")
                    
                    request.predicate = NSPredicate(format: "muskel == %@", "Trizeps")
                    do{
                        try uebungen = mgdContext.executeFetchRequest(request) as! [Uebung]
                    }
                    catch{
                        print("Abfrage fehlgeschlagen!")
                    }
                    uvc.request2 = request
                case "Nacken":
                    let request = NSFetchRequest(entityName: "Uebung")
                    
                    request.predicate = NSPredicate(format: "muskel == %@", "Nacken")
                    do{
                        try uebungen = mgdContext.executeFetchRequest(request) as! [Uebung]
                    }
                    catch{
                        print("Abfrage fehlgeschlagen!")
                    }
                    uvc.request2 = request
                case "Unterarme":
                    let request = NSFetchRequest(entityName: "Uebung")
                    
                    request.predicate = NSPredicate(format: "muskel == %@", "Unterarme")
                    do{
                        try uebungen = mgdContext.executeFetchRequest(request) as! [Uebung]
                    }
                    catch{
                        print("Abfrage fehlgeschlagen!")
                    }
                    uvc.request2 = request
                default:
                    break
                }
            }
        }
    }
    

}
