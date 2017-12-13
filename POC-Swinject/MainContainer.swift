//
//  DefaultContainer.swift
//  POC-Swinject
//
//  Created by Ramon Honorio on 13/12/17.
//  Copyright © 2017 Mira Educação. All rights reserved.
//

import UIKit
import Swinject
import SwinjectStoryboard

// Aqui configura-se as viewControllers presentes no Main.storyboard
extension SwinjectStoryboard {
    @objc class func setup() {
        defaultContainer.storyboardInitCompleted(FirstViewController.self) { r, c in
            c.myColor = UIColor.cyan
        }
        defaultContainer.storyboardInitCompleted(SecondViewController.self) { (r, c) in
            c.myColor = UIColor.brown
            c.person = r.resolve(Person.self)
        }
        defaultContainer.storyboardInitCompleted(ThirdViewController.self) { (r, c) in
            c.viewModel = r.resolve(ThirdViewModel.self)
            c.person = r.resolve(Person.self)
        }
    }
}

// Container (que pode ser por feature)
class MainContainer {
    
    static var `default`: Container = SwinjectStoryboard.defaultContainer
    
}
