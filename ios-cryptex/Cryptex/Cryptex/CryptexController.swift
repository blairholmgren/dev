//
//  CryptexController.swift
//  Cryptex
//
//  Created by Blair Holmgren on 5/1/19.
//  Copyright © 2019 Blair Holmgren. All rights reserved.
//

import Foundation

class CryptexController {
    
    private var cryptexAnswers: [Cryptex] = ["Farmer", "Reaper", "Beatles"]
    
    var currentCryptex: Cryptex?
    
    func randomCryptex() {
        currentCryptex = cryptexAnswers.randomElement()
    }
}
