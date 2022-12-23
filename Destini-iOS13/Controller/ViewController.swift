//
//  ViewController.swift
//  Destini-iOS13
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

    @IBAction func choiceSelected(_ sender: UIButton) {
        
        let userChoice = sender.currentTitle!
        
        storyBrain.checkAnswer(userChoice: userChoice)
        

        updateUI()
        
    }
    
    func updateUI() {
        
        storyLabel.text = storyBrain.storyTitle()
        let answerChoice1 = storyBrain.getAnswer1()
        let answerChoice2 = storyBrain.getAnswer2()
        choice1Button.setTitle(answerChoice1, for: .normal)
        choice2Button.setTitle(answerChoice2, for: .normal)
        
        
    }
    
    
    
    
    

}

