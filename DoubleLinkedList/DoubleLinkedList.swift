//
//  DoubleLinkedList.swift
//  DoubleLinkedList
//
//  Created by Oleksiy on 05.02.2021.
//

import Foundation

class DoubleLinkedList<T>: List {
    
    typealias T = T
    
    private var size = 0
    
    private var root: Node<T>?
    private var tail: Node<T>?
    
    var count: Int {
        return size
    }
    
    //MARK: - Insert
    /// insert a node at index
    func insert(value: T, at index: Int) {
        
        if index > size || index < 0 {
            print("Invalid index for insertion! Index: \(index); Current list size: \(size)")
            return
        }
        
        if index == 0 {
            insertAtTheBeginning(value)
        } else if index == size {
            insertAtTheEnd(value)
        } else {
            insertInTheMiddle(value: value, at: index)
        }
        
        size += 1
    }
    
    /// insert a node at the end of the list
    func insert(value: T){
        insert(value: value, at: size)
    }
    
    /// insert a node at the end or beginning of the list
    func insert(value: T, as type: NodeType){
        switch type {
        case .first:
            insert(value: value, at: 0)
        case .last:
            insert(value: value, at: size)
        }
    }
    
    //MARK: insertAtTheEnd
    private func insertAtTheEnd(_ value: T) {
        if tail == nil {
            tail = Node(value)
            root?.nextNode = tail
            tail?.predecessorNode = root
        
            return
        }
        
        tail?.nextNode = Node(value)
        tail?.nextNode?.predecessorNode = tail
        
        tail = tail?.nextNode
    }
    
    //MARK: insertAtTheBeginning
    private func insertAtTheBeginning(_ value: T) {
        guard let root = root else {
            self.root = Node(value)
            return
        }
        
        let nodeAfterRoot = root
        self.root = Node(value)
        self.root?.nextNode = nodeAfterRoot
        nodeAfterRoot.predecessorNode = self.root
        
        if size == 1 {
            self.tail = nodeAfterRoot
        }
    }
    
    //MARK: insert in the middle
    private func insertInTheMiddle(value: T, at index: Int) {
        var node: Node<T>
        
        if index < size / 2 + 1{
             
            var counter = 0
            node = root!
            
            while counter != index {
                node = node.nextNode!
                counter += 1
            }
        
        } else {
            var counter = size-1
            node = tail!
            
            while counter != index {
                node = node.predecessorNode!
                counter -= 1
            }
        }
        
        let newNode = Node(value)
        node.predecessorNode?.nextNode = newNode
        newNode.predecessorNode = node.predecessorNode
        newNode.nextNode = node
        node.predecessorNode = newNode
    }
    
    //MARK: - Remove
    func remove(with value: T) {
        
        size -= 1
    }
    
    func remove(by index: Int) {
        
        size -= 1
    }
    
    //MARK: - Replace
    func replace(at index: Int, with value: T) {
        
    }
    
    //MARK: - Index
    func index(of value: T) -> Int? {
        return nil
    }
    
    //MARK: - To array
    /// return all values as array
    func toArray() -> [T] {
        guard var node = root else {
            return []
        }
        var array = [node.value]
        
        while let nodeToAppend = node.nextNode {
            array.append(nodeToAppend.value)
            node = nodeToAppend
        }
        
        return array
    }
}
