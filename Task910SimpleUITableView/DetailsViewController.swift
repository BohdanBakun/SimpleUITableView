//
//  DetailsViewController.swift
//  SimpleUITableView910
//
//  Created by Богдан Бакун on 16.05.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var monthNumberLabel: UILabel!
    @IBOutlet weak var monthNameLabel: UILabel!
    
    var monthName = ""
    var monthNumber = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        monthNumberLabel.text = monthNumber
        monthNameLabel.text = monthName
        navigationController?.navigationBar.isHidden = true
    }

}
