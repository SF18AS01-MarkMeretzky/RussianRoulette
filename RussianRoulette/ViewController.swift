//
//  ViewController.swift
//  RussianRoulette
//
//  Created by Instructor on 1/15/19.
//  Copyright © 2019 Instructor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let r: Int = .random(in: 1 ... 6);

    @IBOutlet weak var imageView: UIImageView!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func buttonPressed(_ sender: UIButton) {
        let i: Int = .random(in: 1 ... 6);
        if i == r {
            view.backgroundColor = .red;
            //optional binding
            if let image: UIImage = UIImage(named: "deadGuy") {
                imageView.image = image;
            }
            sender.setTitle("Press to play again", for: .normal)
        } else {
            view.backgroundColor = .green;
            //optional binding
            if let image: UIImage = UIImage(named: "aliveGuy") {
                imageView.image = image;
            }
            sender.setTitle("Press to spin & pull the trigger.", for: .normal)
        }
    }
    
}

