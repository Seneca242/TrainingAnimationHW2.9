//
//  ViewController.swift
//  TrainingAnimationHW2.9
//
//  Created by Дмитрий Дмитрий on 02.09.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var infoDisplayLabel: UILabel!
    
    private var animation = AnimationModel.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        infoDisplayLabel.text = animation.labelDisplay
    }
    
    @IBAction func runButton(_ sender: UIButton) {
        infoDisplayLabel.text = animation.labelDisplay
        
        springView.animation = animation.name
        springView.curve = animation.curve
        springView.force = CGFloat(animation.force)
        springView.delay = CGFloat(animation.delay)
        springView.damping = CGFloat(animation.damping)
        springView.duration = CGFloat(animation.duration)
        springView.velocity = CGFloat(animation.velocity)
        
        animation = AnimationModel.getAnimation()
        sender.setTitle("\(animation.name)", for: .normal)
        
        
        
    }
}
