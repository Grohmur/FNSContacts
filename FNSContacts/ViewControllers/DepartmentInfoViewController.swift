//
//  DepartmentInfoViewController.swift
//  FNSContacts
//
//  Created by Михаил Зверьков on 03.02.2023.
//

import UIKit

class DepartmentInfoViewController: UIViewController {
    
    var currentDepartment: Depatrment!
    
    @IBOutlet weak var departmentNameLabel: UILabel!
    @IBOutlet weak var departmentKabLabel: UILabel!
    @IBOutlet weak var departmentFunctionsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        departmentNameLabel.text = departmentName(departmentType: currentDepartment.type)
        departmentKabLabel.text = "Кабинет: \(currentDepartment.room)"
        let functions = generateDepartmentFunctionsArray(departmentType: currentDepartment.type)
        let functionsText = functions.count == 1 ? functions[0] : " - " + functions[0] + "\n - " + functions[1] + "\n -" + functions[2]
        departmentFunctionsLabel.text = "Функции отдела:\n \(functionsText)"
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
