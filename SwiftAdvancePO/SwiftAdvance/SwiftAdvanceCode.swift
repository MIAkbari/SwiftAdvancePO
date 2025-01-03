//
//  SwiftArray.swift
//  SwiftAdvancePO
//
//  Created by Mohammad on 12/28/24.
//

import Foundation
import UIKit


struct SwiftAdvanceCode {
 
    func runCode() {
        example(of: "Generic") {
            let time = tm()
            
        }
    }

}

class newEl {
    private(set) var new = 2
    let title: String = "Subject"
    let page: Int = 12
}

struct DataRaw<Element>: RawRepresentable {
    typealias RawValue = Element
    
    var rawValue: Element
    
    init(rawValue: RawValue) {
        self.rawValue = rawValue
    }
}

//protocol AnyType {
//    associatedtype Element
//
//    var value: Element { get set }
//}


//infix operator ++: MultiplicationPrecedence
//func ++(_ base: Int, _ power: Int) -> Int {
//    Int(pow(Double(base), Double(power)))
//}
