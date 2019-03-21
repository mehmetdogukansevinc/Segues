//
//  SecondViewController.swift
//  Segues
//
//  Created by Mehmet Doğukan Sevinç on 21.03.2019.
//  Copyright © 2019 Mehmet Doğukan Sevinç. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var mySecondLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Name: \(name)"

        
       
    }
    
    @IBAction func backClicked(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    

}
