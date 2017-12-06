//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Adem MAMA on 6.12.2017.
//  Copyright © 2017 Adem MAMA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var labelText: UILabel!
    var state = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "1.jpg")
        labelText.text = "1.Resim"
        imageView.isUserInteractionEnabled = true
        let gesturedRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.operations))
        imageView.addGestureRecognizer(gesturedRecognizer)
    }
    
    @objc func operations (){
        if state == true {
            imageView.image = UIImage(named: "2.jpg")
            labelText.text = "2.Resim"
            state = false
        }
        else if state == false {
            imageView.image = UIImage(named: "1.jpg")
            labelText.text = "1.Resim"
            state = true
        }
    }
}

