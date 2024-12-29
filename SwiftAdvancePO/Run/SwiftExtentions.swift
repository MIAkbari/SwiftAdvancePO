//
//  SwiftExtentions.swift
//  SwiftAdvancePO
//
//  Created by Mohammad on 12/29/24.
//

import Foundation


extension Array where Element: Equatable {
    
    mutating func remove(_ element: Element) {
        self.removeAll(where: {$0 == element})
    }
    
//    mutating func remove(_ element: Element) {
//        _ = index(of: element).flatMap({
//            self.remove(at: $0)
//        })
//    }
}

//extension Array {
//    /// - Note: By adding the following extension to array indices can be accessed without knowing if the index is inside bounds.
//    /// This extension also handles negative indices.
//    /// example:
//    ///
//    ///     if let thirdValue = array[safe: 2] {
//    ///        print(thirdValue)
//    ///     }
//    ///
//    subscript (safe index: Int) -> Element? {
//        indices ~= index ? self[index] : nil
//    }
//}

extension Array {
    /// - Note: By adding the following extension to array indices can be accessed without knowing if the index is inside bounds.
    /// This extension also handles negative indices.
    /// -1 should refer to the last element
    /// Ensure the index is within valid bounds
    /// Example:
    ///
    ///     if let thirdValue = array[safe: 2] {
    ///        print(thirdValue)
    ///     }
    ///
    subscript (safe index: Int) -> Element? {
        let validIndex = index >= 0 ? index : count + index
        return validIndex >= 0 && validIndex < count ? self[validIndex] : nil
    }
}


/*
 //    var files = ["File-42.txt", "File-01.txt", "File-5.txt", "File-007.txt", "File-10.txt"]
 //    // o(log n)
 //    let new = files.sorted() {$0.compare($1 , options: .numeric) == .orderedAscending}
 //
 //    // o(n^2)
 //    let newData = files.sorted { first, seccend in
 //        let firstNumber = Int(first.split(separator: "-")[1].split(separator: ".")[0]) ?? 0
 //        let seccednNumber = Int(seccend.split(separator: "-")[1].split(separator: ".")[0]) ?? 0
 //        return firstNumber < seccednNumber
 //    }
 */


extension Dictionary {
    /// - Note: Merge Dic with this extension easy to use and method add dic.
    ///
    ///  Example:
    ///
    ///          let dicFirst = [1 : "One"]
    ///          let dicSeccend = [2 : "Two"]
    ///          let mergeDic = dicFirst.merge(dicSeccend)
    ///          print(mergeDic)
    ///          print: [1: "One", 2: "Two"]
    ///
    func merge(_ dic: Dictionary<Key, Value>) -> Dictionary<Key, Value> {
        var dicCopy = self
        for (key, value) in dic {
            dicCopy[key] = value
        }
        return dicCopy
    }
}
