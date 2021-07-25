//
//  ViewController.swift
//  CookieCode
//
//  Created by Katherine Sanders on 7/20/21.
//

import UIKit

class ViewController: UIViewController {
    var nextVC = CalendarViewController()
    
    @IBOutlet weak var slider: UISlider!
    
    @IBOutlet weak var test: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func inputValueButton(_ sender: UIButton) {
        let sliderValue = Double(slider.value)
        
        
    }
    
    //update tracker page

}

