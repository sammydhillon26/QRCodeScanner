//
//  HistoryViewController.swift
//  QRCodeReader
//
//  Created by Ragul T on 21/11/19.
//  Copyright © 2019 AppCoda. All rights reserved.
//

import UIKit
let defaults = UserDefaults.standard
let recentHistoryKey = "History"
var recentHistoryArray = ["Recent History"]

class HistoryViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var tableData = defaults.array(forKey: recentHistoryKey) as! [String]
    let cellReuseIdentifier = "cell"

    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: cellReuseIdentifier)
        tableView.delegate = self
        tableView.dataSource = self
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
extension HistoryViewController : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: cellReuseIdentifier)!
        cell.textLabel?.text = self.tableData[indexPath.row]
        return cell
    }
    
    
}
