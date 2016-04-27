//
//  SecondViewController.swift
//  Simple Tip Calculator
//
//  Created by Ben Whiteley on 4/25/16.
//  Copyright © 2016 UMES ENGE DEPT. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var OutSubtotal: UILabel!
    
    @IBOutlet weak var OutTax: UILabel!
    
    
    @IBOutlet weak var OutTip: UILabel!
    
    
    @IBOutlet weak var OutTotal: UILabel!
    
    @IBOutlet weak var OutSplitNum: UILabel!
    
    
    @IBOutlet weak var OutSplit: UILabel!
    
    var bsubtotal:Float!
    var btax:Float!
    var btip:Float!
    var btotal:Float!
    var bsplitnum:Float!
    var bsplit:Float!
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        OutSubtotal.text = String(bsubtotal)        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    
    
    
}
