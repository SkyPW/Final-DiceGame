//
//  ViewController.swift
//  Dice Game
//
//  Created by  on 5/3/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView1: UIImageView!
    
    @IBOutlet weak var imageView2: UIImageView!
    @IBOutlet weak var scoreLabel: UILabel!
    var score = 0
    var images = ["dice_1","dice_2","dice_3","dice_4","dice_5","dice_6"]
    var dice = [UIImage]()
    override func viewDidLoad() {
        super.viewDidLoad()
        for image in images{
            dice.append(UIImage(named: image)!)
        }
    }

    @IBAction func rollPressed(_ sender: Any) {
        animate(imageView2: imageView2)
        animate(imageView2: imageView1)
        let a = Int.random(in: 0...5)
        let b = Int.random(in: 0...5)
        imageView1.image = UIImage(named: images[a])
        imageView2.image = UIImage(named: images[b])
        score = a + 1 + b + 1
        scoreLabel.text = "score : \(score)"
    }
    
    func animate(imageView2 : UIImageView) {
        imageView2.animationImages = dice
        imageView2.animationDuration = 1
        imageView2 .animationRepeatCount = 1
        imageView2.startAnimating()
    }
    
}

