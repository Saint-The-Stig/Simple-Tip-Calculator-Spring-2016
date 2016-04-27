//
//  ViewController.swift
//  Simple Tip Calculator
//
//  Created by Ben Whiteley on 4/25/16.
//  Copyright © 2016 UMES ENGE DEPT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBOutlet weak var InSubtotal: UITextField!
    
    
    @IBOutlet weak var InTaxPerc: UITextField!
    
    
    @IBOutlet weak var InTipPerc: UITextField!
    
    
    @IBOutlet weak var InNumDinners: UITextField!
    
    

    
    
    // MARK: Actions
    
    @IBAction func calculatepressed(sender: UIButton) {
        
        var subtotal = Float(0.00)
        var taxperc = Float(0.00)
        var tax = Float(0.00)
        var subtax = Float(0.00)
        var tipperc = Float(0.00)
        var tip = Float(0.00)
        var total = Float(0.00)
        var splitnum = Float(0.00)
        var split = Float(0.00)
        
        
        subtotal = (InSubtotal.text as NSString!)!.floatValue
        taxperc = (InTaxPerc.text as NSString!)!.floatValue
        taxperc = taxperc * 0.01
        tipperc = (InTipPerc.text as NSString!)!.floatValue
        tipperc = tipperc * 0.01
        splitnum = (InNumDinners.text as NSString!)!.floatValue
        
        tax = subtotal * taxperc
        subtax = subtotal + tax
        tip = subtax * tipperc
        total = subtax + tip
        split = total / splitnum
        
        
        //Display
    


        
        
        func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {
            if (segue.identifier == "calculatedata") {
                var svc = segue.destinationViewController as! SecondViewController;
                svc.bsubtotal = subtotal
                svc.btax = tax
                svc.btip = tip
                svc.btotal = total
                svc.bsplitnum = splitnum
                svc.bsplit = split
            }
        }
}
}


    

        
        
        
        
        
        
        
        
        
        
        
        
        


