//
//  DepartmentsViewController.swift
//  FNSContacts
//
//  Created by Михаил Зверьков on 01.02.2023.
//

import UIKit

class DepartmentsViewController: UITableViewController {
    
    var departmentsList: [Depatrment]!
    var insp: Inspection!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source


    @IBAction func infoButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "toInspInfo", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ContactsViewController {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let contactList = departmentsList[indexPath.row].type == DepartmentType.leaderInsp ? generateInspLeaders(leaderInsp: departmentsList[indexPath.row].leader, inspection: departmentsList[indexPath.row].inspection) : fillDepartment(department: departmentsList[indexPath.row].type, leaderName: departmentsList[indexPath.row].leader)
        let contactsVC = segue.destination as! ContactsViewController
        contactsVC.contactList = contactList
            contactsVC.currentDepartment = departmentsList[indexPath.row]
        }
        if segue.destination is InspectionInfoViewController {
            let inspDetailVK = segue.destination as! InspectionInfoViewController
            inspDetailVK.insp = insp
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return departmentsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "departmentCell", for: indexPath)

        let department = departmentsList[indexPath.row]
 
        var content = cell.defaultContentConfiguration()
        content.image = UIImage(systemName: "person.3")
        content.text = departmentName(departmentType: department.type)
        content.secondaryText = department.leader
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           performSegue(withIdentifier: "toCOntactList", sender: nil)
    }
}
