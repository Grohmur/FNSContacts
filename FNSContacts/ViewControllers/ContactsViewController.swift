//
//  ContactsViewController.swift
//  FNSContacts
//
//  Created by Михаил Зверьков on 01.02.2023.
//

import UIKit

class ContactsViewController: UITableViewController {
    
    var contactList: [Contact]!
    var currentDepartment: Depatrment!

    override func viewDidLoad() {
        super.viewDidLoad()
        contactList = contactList.sorted(by: { $0.name < $1.name })
    }

    // MARK: - Table view data source

    @IBAction func infoButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "toDepartmentInfo", sender: nil)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)

        let contact = contactList[indexPath.row]
 
        var content = cell.defaultContentConfiguration()
        content.image = UIImage(systemName: "person.circle")
        content.text = contact.name
        content.secondaryText = contact.jobTitle
        cell.contentConfiguration = content
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is ContactDetailViewController{
            guard let indexPath = tableView.indexPathForSelectedRow else { return }
            let contact = contactList[indexPath.row]
            let contactdetailVC = segue.destination as! ContactDetailViewController
            contactdetailVC.contact = contact
        }
        if segue.destination is DepartmentInfoViewController{
            let departmentDetailVC = segue.destination as! DepartmentInfoViewController
            departmentDetailVC.currentDepartment = currentDepartment
        }

    }
}
