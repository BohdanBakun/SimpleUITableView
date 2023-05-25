//
//  TableViewController.swift
//  SimpleUITableView910
//
//  Created by Богдан Бакун on 16.05.2023.
//

import UIKit

class TableViewController: UITableViewController {

    let arrayOfMonths: [Month] = Monthes.list
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrayOfMonths.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = arrayOfMonths[indexPath.row].monthName
        cell.selectionStyle = .none
        return cell
    }
    
    // MARK: - Table view data delegate
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let monthName = arrayOfMonths[indexPath.row].monthName
        let monthNumber = arrayOfMonths[indexPath.row].monthNumber
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        if let detailsVC = main.instantiateViewController(withIdentifier: "DetailsViewController") as? DetailsViewController {
            detailsVC.monthName = monthName
            detailsVC.monthNumber = monthNumber
            navigationController?.pushViewController(detailsVC, animated: true)
        }

    }
}
