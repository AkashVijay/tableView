//
//  ViewController.swift
//  tableView
//
//  Created by Akash Vijay on 7/29/18.
//  Copyright © 2018 Akash Vijay. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
let cars = ["Mercedes", "Dodge", "Honda"]
    
    @IBOutlet var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
       tableView.delegate = self
       tableView.dataSource = self
       tableView.tableFooterView = UIView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cars.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath) as! testCell
        cell.lbl.text = cars[indexPath.row]
        cell.backgroundColor = UIColor.red
        cell.layer.cornerRadius = 10.4
        return cell
    }
    
}
extension ViewController: UITableViewDelegate {
    //
}











