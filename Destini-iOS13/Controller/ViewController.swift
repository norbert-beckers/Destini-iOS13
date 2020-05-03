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
