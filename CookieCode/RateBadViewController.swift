//
//  RateBadViewController.swift
//  CookieCode
//
//  Created by Katherine Sanders on 7/21/21.
//

import UIKit

class RateBadViewController: UIViewController {
    
    @IBOutlet weak var rateBadTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func enterBadButton(_ sender: Any) {
        let userBadResponse = Response()
        
        if let responseBadText = rateBadTextField.text {
            userBadResponse.textResponse = responseBadText
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
