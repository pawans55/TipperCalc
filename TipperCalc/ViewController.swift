//
//  ViewController.swift
//  TipperCalc
//
//  Created by Pawan Shrivastava on 3/12/17.
//  Copyright © 2017 Benjamin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var totallabel: UILabel!
    @IBOutlet weak var tiplabel: UILabel!
     @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("view did disappear")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        tipControl.isSelected = false
        tipControl.selectedSegmentIndex = UISegmentedControlNoSegment
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func calculatortip(sender: AnyObject) {
        
        let tipPercentages = [ 0.18, 0.2 , 0.25]
        
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tiplabel.text = String(format :"%.2f",tip)
        totallabel.text = String(format :"%.2f",total)
    }
    
    @IBAction func calculator(_ sender: Any) {
    }

  
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    
  
}


