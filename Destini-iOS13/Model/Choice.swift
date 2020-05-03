//
//  ChoiceModel.swift
//  Destini-iOS13
//
//  Created by Norbert Beckers on 03/05/2020.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation


struct Choice {
    let text: String
    let destination: Int
    
    init(text: String, destination: Int) {
        self.text = text
        self.destination = destination
    }
    
    func matches(choiceMade: String) -> Bool {
        return self.text == choiceMade
    }
}
