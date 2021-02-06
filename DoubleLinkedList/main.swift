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

list.insert(value: 1, as: .first)
list.insert(value: 2, as: .first)
list.insert(value: 3, as: .first)

print(list.toArray())
