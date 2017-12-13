//
//  SecondViewController.swift
//  POC-Swinject
//
//  Created by Ramon Honorio on 13/12/17.
//  Copyright © 2017 Mira Educação. All rights reserved.
//

import UIKit
import Swinject
import SwinjectStoryboard

class SecondViewController: UIViewController {

    var myColor: UIColor!
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = self.myColor
        
//        print("Person injected name: \(person.name)")
        
        MainContainer.default.register(ThirdViewModel.self) { _ in
            ThirdViewModel(color: .red, text: "Injected")
        }
    }
    
    @IBAction func openThirdVC(_ sender: Any) {
        
        MainContainer.default.register(Person.self) { _ in
            Person(name: "Humberto Vieira", height: 1.75)
        }
        
        let sb = SwinjectStoryboard.create(name: "Main", bundle: nil)
        let thirdVC = sb.instantiateViewController(withIdentifier: ThirdViewController.identifier)
        present(thirdVC, animated: true, completion: nil)
    }
    
}
