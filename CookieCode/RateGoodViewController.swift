//
//  RateGoodViewController.swift
//  CookieCode
//
//  Created by Katherine Sanders on 7/21/21.
//

import UIKit

class RateGoodViewController: UIViewController {

    @IBOutlet weak var rateGoodTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func enterGoodButton(_ sender: Any) {
        let userGoodResponse = Response()
        
        if let responseGoodText = rateGoodTextField.text {
            userGoodResponse.textResponse = responseGoodText
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
