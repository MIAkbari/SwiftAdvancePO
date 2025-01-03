//
//  Stack.swift
//  SwiftAdvancePO
//
//  Created by Mohammad on 12/30/24.
//

import Foundation

public struct Stack<Element> {
    private var storage: [Element] = []
    
    public init() {}
    
    public init(_ elements: [Element]) {
        storage = elements
    }
}

extension Stack: CustomStringConvertible {
    public var description: String {
        "\(storage.map { "\($0)" }.reversed().joined(separator: "\n"))"
    }
}

// Added push and pop
extension Stack {
    
    public mutating func push(_ element: Element) {
        storage.append(element)
    }
    
    @discardableResult
    public mutating func pop() -> Element? {
        storage.popLast()
    }
}

extension Stack {
    
    public var peek: Element? { storage.last }
    
    public var isEmpty: Bool { peek == nil }
}

// if stack get initail data need add ExArrayLi
extension Stack: ExpressibleByArrayLiteral {
    public init(arrayLiteral elements: Element...) {
        storage = elements
    }
}
