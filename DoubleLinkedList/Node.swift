//
//  Node.swift
//  DoubleLinkedList
//
//  Created by Oleksiy on 05.02.2021.
//

import Foundation

class Node<T> {
    let value: T
    
    var predecessorNode: Node<T>?
    var nextNode: Node<T>?
    
    init(value: T) {
        self.value = value
    }
}
