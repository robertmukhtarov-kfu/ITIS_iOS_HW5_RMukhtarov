//
//  ViewController.swift
//  hw5
//
//  Created by Robert Mukhtarov on 16.11.2021.
//

import UIKit

final class ParentViewController: UIViewController {

    // MARK: - Views

    private let openChildVCButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Open Child VC", for: .normal)
        button.addTarget(self, action: #selector(openChildVCButtonPressed), for: .touchUpInside)
        button.sizeToFit()
        return button
    }()

    // MARK: - Overridden Internal Methods

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        openChildVCButton.center = view.center
        view.addSubview(openChildVCButton)
    }

    // MARK: - Private Methods

    @objc private func openChildVCButtonPressed() {
        let childVC = ChildViewController()
        present(childVC, animated: true)
    }
}
