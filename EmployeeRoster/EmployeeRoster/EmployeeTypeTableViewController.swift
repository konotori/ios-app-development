//
//  EmployeeTypeTableViewController.swift
//  EmployeeRoster
//
//  Created by Tung Nguyen on 12/4/19.
//

import UIKit

protocol EmployeeTypeDelegate {
    func didSelect(employeeType: EmployeeType)
}

class EmployeeTypeTableViewController: UITableViewController {
    
    // MARK: - Properties
    
    var employeeType : EmployeeType?
    var delegate: EmployeeTypeDelegate?
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    // MARK: - UITableViewDataSource

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return EmployeeType.all.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell  = tableView.dequeueReusableCell(withIdentifier: "EmployeeTypeCell") else {
            return UITableViewCell()
        }
        
        let type = EmployeeType.all[indexPath.row]
        
        cell.textLabel?.text = type.description()

        if employeeType == type {
            cell.accessoryType = .checkmark
        } else {
            cell.accessoryType = .none
        }
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let selectedType = EmployeeType.all[indexPath.row]
        employeeType = selectedType
        delegate?.didSelect(employeeType: selectedType)
        tableView.reloadData()
    }

}
