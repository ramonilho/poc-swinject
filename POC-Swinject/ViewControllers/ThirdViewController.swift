//
//  ThirdModalViewController.swift
//  POC-Swinject
//
//  Created by Ramon Honorio on 13/12/17.
//  Copyright © 2017 Mira Educação. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    static let identifier = "ThirdVC"
    var viewModel: ThirdViewModel!
    var person: Person!
    
    // MARK: IBOutlets
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = viewModel.myColor
        myLabel.text = viewModel.myText
        
        
        print(person.name)
    }
    
}
