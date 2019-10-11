//
//  ViewController.swift
//  SensorApp
//
//  Created by Capgemini on 05/09/19.
//  Copyright © 2019 Capgemini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet
    var tableView: UITableView!
    
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var password: UILabel!
    
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var welcome: UILabel!
    @IBOutlet weak var sensorsite: UILabel!
   
    
    @IBOutlet weak var userNameField: UITextField!
    
    
    @IBOutlet weak var Image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.Popover.layer.cornerRadius=45
    }
    
   
   /* @IBOutlet var Popover: UIView!
    
    
    @IBAction func poploginbtn(_ sender: Any) {
        
        self.view.addSubview(Popover)
        Popover.center = self.view.center
    }*/
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

