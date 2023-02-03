//
//  InspectionInfoViewController.swift
//  FNSContacts
//
//  Created by Михаил Зверьков on 03.02.2023.
//

import UIKit

class InspectionInfoViewController: UIViewController {
    
    var insp: Inspection!

    @IBOutlet weak var inspName: UILabel!
    @IBOutlet weak var inspAdr: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        inspName.text = insp.inspName
        inspAdr.text = insp.inspAdress
        // Do any additional setup after loading the view.
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
