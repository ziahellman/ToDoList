//
//  AddToDoViewController.swift
//  ToDoListApp
//
//  Created by Zia Hellman on 5/3/20.
//  Copyright © 2020 Zia Hellman. All rights reserved.
//

import UIKit
import CoreData

class AddToDoViewController: UIViewController {
    var previousVC = ToDoTableViewController()
    

    @IBOutlet weak var titleTextField: UITextField!
    
    @IBOutlet weak var importantSwtich: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func addTapped(_ sender: Any) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let context = appDelegate.persistentContainer.viewContext
        
        let toDo = ToDoCD(context: context)
        
        toDo.name = titleTextField.text
        toDo.important = importantSwtich.isOn
        
        appDelegate.saveContext()
        
        navigationController?.popViewController(animated: true)
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
