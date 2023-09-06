//
//  FirstViewController.swift
//  To Do List App
//
//  Created by SHYNU MARY VARGHESE on 2023-09-05.
//

import UIKit

class FirstViewController: UIViewController {
   var itemAdded = ""
    @IBOutlet weak var listAddedLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    override func viewWillAppear(_ animated: Bool) {
        listAddedLabel.text = " \(itemAdded)"
    }

}
