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
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryLabel()
        choiceOneBtn.setTitle(storyBrain.getChoiceOne(), for: .normal)
        choiceTwoBtn.setTitle(storyBrain.getChoiceTwo(), for: .normal)
    }
}

