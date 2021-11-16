//
//  CircularLinkedList.swift
//  hw5
//
//  Created by Robert Mukhtarov on 16.11.2021.
//

import Foundation

final class CircularLinkedList<T> {

    // MARK: - Node

    private final class Node {
        var value: T

        var next: Node? {
            get {
                guard let next = _next else {
                    return parent?.head
                }
                return next
            }

            set {
                _next = newValue
            }
        }

        weak var parent: CircularLinkedList<T>?

        private var _next: Node?

        init(value: T) {
            self.value = value
        }
    }

    // MARK: - Properties

    private var head: Node?
    private var tail: Node?

    // MARK: - Internal Methods

    func append(_ newValue: T) {
        if tail == nil {
            head = Node(value: newValue)
            head?.parent = self
            tail = head
        } else {
            let newNode = Node(value: newValue)
            newNode.parent = self
            tail?.next = newNode
            tail = newNode
        }
    }

    func printList(numberOfItems: Int) {
        print("Circular list contents:")
        
        guard var currentNode = head else {
            print("The list is empty")
            return
        }

        for _ in 0..<numberOfItems {
            print(currentNode.value, terminator: " ")
            guard let nextNode = currentNode.next else { break }
            currentNode = nextNode
        }
    }
}
