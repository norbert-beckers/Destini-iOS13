//
//  StoryModel.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryModel {
    let stories = [
        Story(title: "You see a fork in the road.",
              choices: ["Take a left.", "Take a right."]),
        Story(title: "You see a tiger.",
              choices: ["You shout for help.", "Play dead."]),
        Story(title: "You find a treasure chest",
              choices: ["Open it", "Check for traps."])
    ]
    
    var storyIndex = 0
    
    func getStoryTitle() -> String {
        return stories[storyIndex].title
    }
    
    func getChoiceTexts() -> [String] {
        return stories[storyIndex].choices
    }
    
    mutating func nextStory(choiceMade userChoice: String) {
        if storyIndex == 0 {
            if userChoice == stories[storyIndex].choices[0] {
                storyIndex = 1
            } else {
                storyIndex = 2
            }
        }
    }
}
