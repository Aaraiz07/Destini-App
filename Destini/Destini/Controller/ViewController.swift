//
//  ViewController.swift
//  Destini
//
//  Created by Aaraiz Wasim on 30/09/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
   
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func choiceMade(_ sender: UIButton) {
        let choice = sender.currentTitle!
        storyBrain.updateStoryNumber(choice)
        updateUI()
    }
    
    func updateUI(){
        storyLabel.text = storyBrain.getStoryName()
        choice1Button.setTitle(storyBrain.getChoice1Name(), for: .normal)
        choice2Button.setTitle(storyBrain.getChoice2Name(), for: .normal)
    }
    
    
}


