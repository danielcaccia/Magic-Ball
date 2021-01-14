//
//  ViewController.swift
//  Magic Ball
//
//  Created by Daniel Caccia on 14/01/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerImage: UIImageView!
    @IBOutlet weak var askButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dropShadow(button: askButton)
    }
    
    @IBAction func askButtonDown(_ sender: UIButton) {
        sender.layer.shadowOffset = CGSize(width: 0, height: 0)
        sender.layer.shadowRadius = 0.5
        sender.layer.shadowColor = UIColor.yellow.cgColor
        sender.transform = CGAffineTransform(scaleX: 0.97, y: 0.97)
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        dropShadow(button: sender)
        
        let newImage = [#imageLiteral(resourceName: "yes"), #imageLiteral(resourceName: "no"), #imageLiteral(resourceName: "maybe"), #imageLiteral(resourceName: "unlikely"), #imageLiteral(resourceName: "ok"), #imageLiteral(resourceName: "later"), #imageLiteral(resourceName: "goblins and ghoulies"), #imageLiteral(resourceName: "lizards and witches")].randomElement()

        UIView.transition(with: self.answerImage,
                                  duration: 2.0,
                                  options: .transitionCrossDissolve,
                                  animations: {
                                    self.answerImage.image = newImage
                                  },
                                  completion: nil)
    }
    
}

extension ViewController {
    func dropShadow(button: UIButton) {
        button.layer.shadowOpacity = 0.7
        button.layer.shadowRadius = 5.0
        button.layer.shadowOffset = CGSize(width: 5.0, height: 2.0)
        button.layer.shadowColor = UIColor.black.cgColor
        button.transform = CGAffineTransform(scaleX: 1, y: 1)
    }
}
