//
//  ViewController.swift
//  Binairo
//
//  Created by Gertjan Reynaert on 9/08/14.
//  Copyright (c) 2014 Gertjan Reynaert. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var appTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appTitle.text = "Binairo"
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

