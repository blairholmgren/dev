//
//  CryptexViewController.swift
//  Cryptex
//
//  Created by Blair Holmgren on 5/1/19.
//  Copyright © 2019 Blair Holmgren. All rights reserved.
//

import UIKit

class CryptexViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet var hintLabel: UILabel!
    
    @IBOutlet var pickerView: UIPickerView!
    
    @IBOutlet var unlockButton: UIButton!
    
    @IBAction func unlockButtonPressed(_ sender: Any) {
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
