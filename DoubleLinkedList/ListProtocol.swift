//
//  ListProtocol.swift
//  DoubleLinkedList
//
//  Created by Oleksiy on 05.02.2021.
//

import Foundation

protocol List {
    associatedtype T

    func insert(value: T, at index: Int)
    func insert(value: T)

    func remove(with value: T)
    func remove(by index: Int)

    func replace(at index: Int, with value: T)

    func index(of value: T) -> Int?
    
    func toArray() -> [T]

    var count: Int { get }
}
