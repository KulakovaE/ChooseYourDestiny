//
//  ViewController.swift
//  ChooseYourDestiny
//
//  Created by Darko Kulakov on 2019-11-14.
//  Copyright © 2019 Elena Kulakova. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choiceOneBtn: UIButton!
    @IBOutlet weak var choiceTwoBtn: UIButton!
    
//    var story0 = "You see a fork in the road"
//    var choice1 = "Take left"
//    var choice2 = "Take right"
    var story = Story()
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyLabel.text = story.title[0]
        choiceOneBtn.setTitle(story.choice1[0], for: .normal)
        choiceTwoBtn.setTitle(story.choice2[0], for: .normal)
    }


    @IBAction func choiseMade(_ sender: UIButton) {
        
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryLabel()
        choiceOneBtn.setTitle(storyBrain.getChoiceOne(), for: .normal)
        choiceTwoBtn.setTitle(storyBrain.getChoiceTwo(), for: .normal)
    }
}

