//
//  RunSwift.swift
//  SwiftAdvancePO
//
//  Created by Mohammad on 12/28/24.
//

import Foundation

struct SwiftRun {
    
    var swiftArray: SwiftAdvanceCode?
//    /// - Note: <Compire time complexly>
//    // make code math n to 1
//    func sumFromOne(to n: Int) -> Int {
//        // first o(n) Linear
//        var result = 0
//        for index in 1...n {
//            result += index
//        }
//        return result
//        // seccend o(log n)
//        return (1...n).reduce(0, +)
//        
//        // thired o(1 or k) constant
//        return (1 + n) * n / 2
//    }

}

/// - Note: This method code for url expretion string use
extension URL: @retroactive ExpressibleByStringLiteral {
    public init(stringLiteral value: StringLiteralType) {
        self = URL(string: value) ?? "Empty"
    }
}

struct Wine: CustomDebugStringConvertible {
    var urlResponse: URL?

    var debugDescription: String {
        "urlResponse: \(urlResponse.optional()) "
    }
}


extension Optional {
    func optional() -> Any {
        return self ?? "Empty"
    }
    
    func optional() -> [Any] {
        return self as? [Any] ?? []
    }
}


class Log {

    static func debug(_ meesage: Any..., separator: String = " ", terminator: String = "\n") {
        debugPrint(meesage, separator: separator, terminator: terminator)
    }
    
    static func info(_ meesage: Any..., separator: String = " ", terminator: String = "\n") {
        debugPrint(meesage, separator: separator, terminator: terminator)
    }
}

// - MARK: Global Method

func example(of description: String, simpleCode: () -> Void) {
    print("""
-------------------------------------
Results for: '\(description)'
""")
    simpleCode()
    
    print("""
-------------------------------------
""")
}


