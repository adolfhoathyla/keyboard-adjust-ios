//
//  ViewController.swift
//  keyboard-adjust-tableview
//
//  Created by Cmdev on 31/07/2018.
//  Copyright © 2018 PosCash. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(ViewController.endEditing))
        self.view.addGestureRecognizer(tap)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: - others
    @objc func endEditing() {
        self.view.endEditing(true)
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let identifier = segue.identifier else { return }
        
        switch identifier {
        case "TABLE_FORM_IDENTIFIER":
            let formVC = segue.destination as? FormTableViewController
            formVC?.completionHandler = { (name, address, phone, sex, age, height) in
                print(name + " / " + address + " / " + phone + " / " + sex + " / " + age + " / " + height)
            }
        default:
            break
        }
    }
    
}

