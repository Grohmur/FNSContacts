//
//  ContactDetailViewController.swift
//  FNSContacts
//
//  Created by Михаил Зверьков on 01.02.2023.
//

import UIKit

class ContactDetailViewController: UIViewController {
    
    @IBOutlet weak var contactPhoto: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var jobTitle: UILabel!
    @IBOutlet weak var number: UILabel!
    @IBOutlet weak var date: UILabel!
    @IBOutlet weak var functions: UILabel!
    
    
    var contact: Contact!

    override func viewDidLoad() {
        super.viewDidLoad()
        contactPhoto.image = UIImage(named: contact.gender == Gender.male ? "male" : "female")
        name.text = contact.name
        jobTitle.text = contact.jobTitle
        number.text = contact.phone
        date.text = contact.dateBirth
        let functionList = "Основные функции: \n\(contact.functions)"
        functions.text = functionList
    }

}
