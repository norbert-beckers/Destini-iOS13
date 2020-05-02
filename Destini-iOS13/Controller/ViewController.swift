//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyModel = StoryModel()
    
    let stories = [
        Story(title: "You see a fork in the road.",
              choices: ["Take a left.", "Take a right."]),
        Story(title: "You see a tiger.",
              choices: ["You shout for help.", "Play dead."]),
        Story(title: "You find a treasure chest",
              choices: ["Open it", "Check for traps."])
    ]
    
    var storyIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let choice = sender.currentTitle!
        
        storyModel.nextStory(choiceMade: choice)
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyModel.getStoryTitle()
        
        let choices = storyModel.getChoiceTexts()
        choice1Button.setTitle(choices[0], for: .normal)
        choice2Button.setTitle(choices[1], for: .normal)
    }
}
