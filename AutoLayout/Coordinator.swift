//
//  Coordinator.swift
//  AutoLayout
//
//  Created by David Fekke on 6/12/22.
//

import UIKit

protocol Coordinator {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}
