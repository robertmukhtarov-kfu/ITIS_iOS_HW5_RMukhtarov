//
//  ChildViewController.swift
//  hw5
//
//  Created by Robert Mukhtarov on 16.11.2021.
//

import UIKit

final class ChildViewController: UIViewController {

    // MARK: - Properties

    private let circularLinkedList = CircularLinkedList<Int>()

    // MARK: - Overridden Internal Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        populateList()
    }

    // MARK: - Private Methods

    private func populateList() {
        circularLinkedList.append(1)
        circularLinkedList.append(2)
        circularLinkedList.append(3)
        circularLinkedList.append(4)
        circularLinkedList.append(5)

        // Например, делаем четыре круга по списку
        circularLinkedList.printList(numberOfItems: 20)
    }
}
