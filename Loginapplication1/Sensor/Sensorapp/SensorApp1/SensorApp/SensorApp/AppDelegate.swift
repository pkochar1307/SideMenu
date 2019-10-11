//
//  AppDelegate.swift
//  SensorApp
//
//  Created by Capgemini on 07/09/19.
//  Copyright © 2019 Capgemini. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    var context : NSManagedObjectContext!
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        context = persistentContainer.viewContext
        createSensor()
        return true
    }
   
        
        func applicationWillTerminate(_ application: UIApplication) {
            
            self.saveContext()
        }
        
        // MARK: - Core Data stack
        
        lazy var persistentContainer: NSPersistentContainer = {
            
            let container = NSPersistentContainer(name: "SensorApp1")
            container.loadPersistentStores(completionHandler: { (storeDescription, error) in
                if let error = error as NSError? {
                    
                    fatalError("Unresolved error \(error), \(error.userInfo)")
                }
            })
            return container
        }()
        
        // MARK: - Core Data Saving support
        
        func saveContext () {
            if context.hasChanges {
                do {
                    try context.save()
                } catch {
                    
                    let nserror = error as NSError
                    fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
                }
            }
        }
    }


extension AppDelegate{
    
    private func createSensor()
    {
        let sensor1 = Sensor (context : context)
        sensor1.sID = "1"
        sensor1.sname = "Sensor1"
        sensor1.sDescr = "Sensor1Description"
        
        let sensor2 = Sensor (context : context)
        sensor2.sID = "2"
        sensor2.sname = "Sensor2"
        sensor2.sDescr = "Sensor2Description"
        
        let sensor3 = Sensor (context : context)
        sensor3.sID = "3"
        sensor3.sname = "Sensor3"
        sensor3.sDescr = "Sensor3Description"
        
    }
}
