//
//  ViewController.swift
//  Segues
//
//  Created by Mehmet Doğukan Sevinç on 21.03.2019.
//  Copyright © 2019 Mehmet Doğukan Sevinç. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var nameText: UITextField!
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        //Bu fonksiyon içindeki destiationVC yi bir değişken olarak kaydettik ve öteki segueden ne istersek buraya çekebiliyoruz.
        if segue.identifier == "fromFirstToSecond"{
            let destinationVC = segue.destination as! SecondViewController
            destinationVC.name = userName
        }
    }
    
    @IBAction func saveClicked(_ sender: Any) {
        userName = nameText.text!
        performSegue(withIdentifier: "fromFirstToSecond", sender: nil)
    }
    

}

