//
//  main.swift
//  DoubleLinkedList
//
//  Created by Oleksiy on 05.02.2021.
//

import Foundation

let list = DoubleLinkedList<Int>()

list.insert(value: 1)
list.insert(value: 2)
list.insert(value: 3)

list.insert(value: 4, as: .first)
list.insert(value: 5, as: .first)
list.insert(value: 6, as: .first)

list.insert(value: 8, at: 2)
list.insert(value: 9, at: 2)
list.insert(value: 10, at: 2)

list.insert(value: 11, at: 7)
list.insert(value: 12, at: 7)
list.insert(value: 13, at: 7)

print(list.toArray())
print(list.count)
