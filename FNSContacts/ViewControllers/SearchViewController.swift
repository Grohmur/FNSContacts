//
//  SearchViewController.swift
//  FNSContacts
//
//  Created by Михаил Зверьков on 02.02.2023.
//

import UIKit

class SearchViewController: UITableViewController {
    
    private let inspections = genereteInspectionSearchList()
    private let contacts = generateContactsSearchList()
    private let searchController = UISearchController(searchResultsController: nil)
    private var filteredInspections: [Inspection] = []
    private var filteredContacts: [Contact] = []
    private var searchBarIsEmpty: Bool {
        guard let text = searchController.searchBar.text else { return false }
        return text.isEmpty
    }
    private var isFiltering: Bool {
        return searchController.isActive && !searchBarIsEmpty
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupSearchController()
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let filter = filteredInspections.count + filteredContacts.count
        let nonfilter = inspections.count + contacts.count
        return isFiltering ? filter : nonfilter
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "searchCell", for: indexPath)
        if isFiltering {
            if indexPath.row >= filteredInspections.count {
                let contact = filteredContacts[indexPath.row-filteredInspections.count]
                var content = cell.defaultContentConfiguration()
                content.image = UIImage(systemName: "person.circle")
                content.text = contact.name
                content.secondaryText = contact.jobTitle
                cell.contentConfiguration = content
                return cell
            } else {
                let inspect = filteredInspections[indexPath.row]
         
                var content = cell.defaultContentConfiguration()
                content.image = UIImage(systemName: "building.2.crop.circle")
                content.text = inspect.inspName
                content.secondaryText = inspect.leader
                cell.contentConfiguration = content
                return cell
            }
        } else {
            if indexPath.row >= inspections.count {
                let contact = contacts[indexPath.row-inspections.count]
                var content = cell.defaultContentConfiguration()
                content.image = UIImage(systemName: "person.circle")
                content.text = contact.name
                content.secondaryText = contact.jobTitle
                cell.contentConfiguration = content
                return cell
            } else {
                let inspect = inspections[indexPath.row]
         
                var content = cell.defaultContentConfiguration()
                content.image = UIImage(systemName: "building.2.crop.circle")
                content.text = inspect.inspName
                content.secondaryText = inspect.leader
                cell.contentConfiguration = content
                return cell
            }
        }

    }

    private func setupSearchController() {
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Поиск"
        navigationItem.searchController = searchController
        definesPresentationContext = true
        
        if let textField = searchController.searchBar.value(forKey: "searchField") as? UITextField {
            textField.font = UIFont.boldSystemFont(ofSize: 17)
            textField.textColor = .black
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        if isFiltering {
            if indexPath.row >= filteredInspections.count {
                let contact = filteredContacts[indexPath.row-filteredInspections.count]
                let contactDetailVK = segue.destination as! ContactDetailViewController
                contactDetailVK.contact = contact
            } else {
                let inspection = filteredInspections[indexPath.row]
                let departmentsVK = segue.destination as! DepartmentsViewController
                departmentsVK.departmentsList = fillInspection(leaderInsp: inspection.leader, inspection: inspection.inspName)
                departmentsVK.insp = inspection
            }
        } else {
            if indexPath.row >= inspections.count {
                let contact = contacts[indexPath.row-inspections.count]
                let contactDetailVK = segue.destination as! ContactDetailViewController
                contactDetailVK.contact = contact
            } else {
                let inspection = inspections[indexPath.row]
                let departmentsVK = segue.destination as! DepartmentsViewController
                departmentsVK.departmentsList = fillInspection(leaderInsp: inspection.leader, inspection: inspection.inspName)
                departmentsVK.insp = inspection
            }
        }
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if isFiltering {
            if indexPath.row >= filteredInspections.count {
                performSegue(withIdentifier: "fromSearchToContact", sender: nil)
            } else {
                performSegue(withIdentifier: "fromSearchToDepartments", sender: nil)
            }
        } else {
            if indexPath.row >= inspections.count {
                performSegue(withIdentifier: "fromSearchToContact", sender: nil)
            } else {
                performSegue(withIdentifier: "fromSearchToDepartments", sender: nil)
            }
        }
        
    }
    
    
}

extension SearchViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        filterContentForSearchText(searchController.searchBar.text!)
    }
    
    private func filterContentForSearchText(_ searchText: String) {
        filteredInspections = inspections.filter { insp in
            insp.inspName.lowercased().contains(searchText.lowercased())
        }
        filteredContacts = contacts.filter { cont in
            cont.name.lowercased().contains(searchText.lowercased())
        }
        
        tableView.reloadData()
    }
}
