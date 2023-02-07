//
//  ViewController.swift
//  FNSContacts
//
//  Created by Михаил Зверьков on 28.12.2022.
//

import UIKit

class LoginViewController: UIViewController {

 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else {return}
        guard let viewControllers = tabBarController.viewControllers else {return}
        
        viewControllers.forEach {
            if let navigationVC = $0 as? UINavigationController {
                guard let InspectionsVC = navigationVC.topViewController as? InspectionsViewController else {return}
                InspectionsVC.inspectionsList = generateInspections(region: "Санкт-Петербург")
            }
        }
    }
    
    
    @IBAction func enterButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "toInspections", sender: nil)
    }
    
    
}

