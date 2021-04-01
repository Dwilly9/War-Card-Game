//
//  ViewController.swift
//  Final-Project
//
//  Created by Daniel Williams on 3/7/18.
//  Copyright © 2018 Daniel Williams. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    @IBOutlet weak var rulesView: UITextView!
    
    @IBAction func changeRules(_ sender: Any) {
       rulesView.isHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rulesView.isHidden = true

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

