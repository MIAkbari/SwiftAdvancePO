//
//  SwiftArray.swift
//  SwiftAdvancePO
//
//  Created by Mohammad on 12/28/24.
//

import Foundation

struct SwiftAdvanceCode {
   
    func runCode() {
        example(of: "usingOfStack") {
            var stack = Stack<Int>()
            
            stack.push(2)
            stack.push(4)
            stack.push(6)
            stack.push(5)
            stack.pop()
            
            Log.debug(stack)
        }
    }
}
