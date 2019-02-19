//
//  ViewController.swift
//  swift_01_tableview
//
//  Created by Ｗill on 2019/2/19.
//  Copyright © 2019 NTW. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDataSource,UITableViewDelegate{
    
    var ListArray: NSArray = ["Hello world", "Swift", "UITableView", "Cell"]
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ListArray.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "cell")
        
        
//        cell.selectionStyle = UITableViewCell.SelectionStyle.none;
        cell.textLabel?.text = (ListArray[indexPath.row] as! String);
        
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80;
    }
    

    @IBOutlet var testView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        testView.delegate = self;
        testView.dataSource = self;
//        testView.separatorColor = UIColor.clear;
    }


}

