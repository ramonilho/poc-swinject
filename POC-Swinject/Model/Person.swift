//
//  Person.swift
//  POC-Swinject
//
//  Created by Ramon Honorio on 13/12/17.
//  Copyright © 2017 Mira Educação. All rights reserved.
//

import UIKit

class Person: NSObject {
    var name: String!
    var height: Float!
    
    init(name: String, height: Float) {
        self.name = name
        self.height = height
    }
}
