//
//  ViewController.swift
//  SwiftAdvancePO
//
//  Created by Mohammad on 12/28/24.
//

import UIKit

class ViewController: UIViewController {

    var swiftCode = SwiftRun()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        swiftCode.swiftArray = SwiftAdvanceCode()
        swiftCode.swiftArray?.runCode()
    }
}

