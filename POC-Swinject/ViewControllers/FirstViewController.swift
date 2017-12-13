//
//  FirstViewController.swift
//  POC-Swinject
//
//  Created by Ramon Honorio on 13/12/17.
//  Copyright © 2017 Mira Educação. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    var myColor: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = self.myColor
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
