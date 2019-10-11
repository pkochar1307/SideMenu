//
//  CreateObj.swift
//  SensorApp
//
//  Created by Capgemini on 05/09/19.
//  Copyright © 2019 Capgemini. All rights reserved.
//

import UIKit
import CoreData

class CreateObj: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
   
    @IBOutlet weak var sensorId: UITextField!
    
    @IBOutlet weak var sensorName: UITextField!
    
    @IBOutlet weak var sensorDescription: UITextField!
    
    
    
    let nscontext = ((UIApplication.shared.delegate) as!
        AppDelegate).persistentContainer.viewContext
    
   
    @IBAction func Add(_ sender: UIButton) {
    
    let entity = NSEntityDescription.insertNewObject(forEntityName: "Sensor", into: nscontext)
        entity.setValue(Int(sensorId.text!), forKey:"sensorId")
        entity.setValue(sensorName.text, forKey: "sensorName")
        entity.setValue(sensorDescription.text   , forKey: "sensorDescription")
        
    
        do
        {
            try nscontext.save()
            sensorId.text = ""
            sensorName.text = ""
            sensorDescription.text = ""

        }
        catch
        {
            
        }
        print("Record Inserted")
        self.navigationController?.popViewController(animated: true)
        
    }


  override func didReceiveMemoryWarning() {
    
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
    

