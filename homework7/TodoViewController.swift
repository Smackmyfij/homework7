//
//  TodoViewController.swift
//  homework7
//
//  Created by user on 04.07.17.
//  Copyright © 2017 fijirald. All rights reserved.
//

import UIKit

class TodoViewController: UIViewController {
    
    
    
    @IBOutlet weak var toDoTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.toDoTableView.dataSource = self as? UITableViewDataSource
        self.toDoTableView.tableFooterView = UIView()
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

 extension TodoViewController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell

}
