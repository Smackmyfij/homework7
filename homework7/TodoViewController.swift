//
//  TodoViewController.swift
//  homework7
//
//  Created by user on 04.07.17.
//  Copyright © 2017 fijirald. All rights reserved.
//

import UIKit

class TodoViewController: UIViewController {
    
    @IBOutlet weak var ToDoTaskTextField: UITextField!
    
    var toDoTask = ["Wash the car", "Take off the trash", "Do the homework", "Finish the homework"]
    
    
    @IBOutlet weak var toDoTableView: UITableView!
    
    open func deleteRows(at indexPaths: [IndexPath], with animation: UITableViewRowAnimation)
    {
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.toDoTableView.dataSource = self
        self.toDoTableView.tableFooterView = UIView()
        ToDoTaskTextField.backgroundColor = UIColor.lightGray
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        let text = ToDoTaskTextField.text
        toDoTask.append(text!)
        toDoTableView.reloadData()
        return true
    }
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        
        if editingStyle == .delete {
            
            self.toDoTask.remove(at: indexPath.row)
            
            self.toDoTableView.reloadData()
        }
        
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}

extension TodoViewController: UITableViewDataSource
{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return toDoTask.count
        
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let toDoCell = toDoTableView.dequeueReusableCell(withIdentifier: "ToDoTableViewIdentifier", for: indexPath)
        
        if let myToDoCell = toDoCell as? TodoTableViewCell
        {
            myToDoCell.configureCellWith(name: toDoTask[indexPath.row])
        }
        return toDoCell
    }
    
}
