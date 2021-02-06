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

print("###REPLACE###")
list.replace(at: 0, with: 14)
print(list.toArray())

print("###REMOVE###")

list.remove(at: 3)
print(list.toArray())

list.remove(.first)
print(list.toArray())

list.remove(.last)
print(list.toArray())

print("###INSERTION 2###")

list.insert(value: 111, as: .first)
list.insert(value: 222, as: .last)

list.insert(value: 333, at: 5)

print(list.toArray())

print(list.index(of: 111))
print(list.index(of: 222))
print(list.index(of: 333))
print(list.index(of: 444))
