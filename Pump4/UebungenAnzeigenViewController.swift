//
//  UebungenAnzeigenViewController.swift
//  Pump4
//
//  Created by Marcel Spindler on 30.04.16.
//  Copyright © 2016 Marcel Spindler. All rights reserved.
//

import UIKit

class UebungenAnzeigenViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var mgdContext = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
    
    @IBOutlet weak var hinzufuegenButtonOutlet: UIBarButtonItem!
    @IBOutlet weak var tableView: UITableView!
    var uebungen = [Uebung](){
        didSet{
            self.tableView.reloadData()
        }
    }
    
    var request2 = NSFetchRequest()
    
    var uebungForPlan = Bool()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadUebungen()
        setupTableView()
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("UebungenCell", forIndexPath: indexPath)
        let uebung = uebungen[indexPath.row]
        cell.textLabel!.text = uebung.name!
        cell.textLabel?.textAlignment = .Center
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return uebungen.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if uebungForPlan{
            tableView.deselectRowAtIndexPath(indexPath, animated: true)
            let uebungen = self.uebungen[indexPath.row]
            let cell = tableView.cellForRowAtIndexPath(indexPath)
            uebungen.ausgewaehlt?.boolValue() = !uebungen.ausgewaehlt?.boolValue()
            if uebungen.ausgewaehlt{
                cell?.accessoryType = UITableViewCellAccessoryType.Checkmark
            }
            else{
                cell?.accessoryType = UITableViewCellAccessoryType.None
            }
        }
    }
    
    func loadUebungen(){
        
        do{
            try uebungen = mgdContext.executeFetchRequest(request2) as! [Uebung]
        }
        catch{
            print(error)
        }
        
    }
    
    func setupTableView(){
        if uebungForPlan{
            hinzufuegenButtonOutlet.title = "Zu Plan hinzufügen"
            
            
        }
    }
    
    override func shouldPerformSegueWithIdentifier(identifier: String, sender: AnyObject?) -> Bool {
        if identifier == "neueUebung"{
            if uebungForPlan{
                return false
            }
            else{
                return true
            }
        }
        return false
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "neueUebung" {
            let ctrl = segue.destinationViewController as! UebungHinzufuegenViewController
            ctrl.saveDelegate = {
                (newUebung, newMuskelgruppe) in
                
                let neueUebung = NSEntityDescription.insertNewObjectForEntityForName("Uebung", inManagedObjectContext: self.mgdContext) as! Uebung
                neueUebung.name = newUebung
                neueUebung.muskel = newMuskelgruppe
                
                do{
                    try self.mgdContext.save()
                }
                catch{
                    print("speichern fehlgeschlagen")
                }
                self.loadUebungen()
                self.navigationController?.popViewControllerAnimated(true)
            }
        }
    }

}
