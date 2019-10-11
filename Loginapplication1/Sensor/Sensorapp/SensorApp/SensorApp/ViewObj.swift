//
//  ViewObj.swift
//  SensorApp
//
//  Created by Capgemini on 05/09/19.
//  Copyright © 2019 Capgemini. All rights reserved.
//

import UIKit
import CoreData

class ViewObj: UIViewController {

    var window: UIWindow?
    var item :[Any] = []
    var dict = NSMutableDictionary()
    let appdelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let context = appdelegate.persistentContainer.viewContext
        var locations = [Sensor]() // Login is your Entity name
        let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Sensor")
        fetchRequest.returnsObjectsAsFaults = false
        locations = try! context.fetch(fetchRequest) as! [Sensor]
        for location in locations
        {
            item.append(location)
        }
        
        func numberOfSections(in tableView: UITableView) -> Int
        {
            return 1
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) ->
            Int
        {
            return item.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->
            UITableViewCell
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for:
                indexPath) as! SensorTableViewCell
            
            let dic = item[indexPath.row] as! NSManagedObject
            //cell.sensorId?.text = dic.value(forKey: "sensorId" ) as? Int64
            cell.sensorName?.text = dic.value(forKey: "sensorName" ) as? String
            cell.sensorDescription?.text = dic.value(forKey: "sensorDescription" ) as? String
            
            let sensorId=dic.value(forKey: "sensorId" ) as? Int64
            cell.sensorId.text = "\(String(describing: sensorId ?? 0))"
            return cell
        }    }
    
   
    
    
   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
