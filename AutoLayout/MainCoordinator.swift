//
//  MainCoordinator.swift
//  AutoLayout
//
//  Created by David Fekke on 6/12/22.
//

import UIKit

class MainCoordinator : Coordinator {
    var childCoordinators: [Coordinator] = []
    var navigationController: UINavigationController
    var currentViewController: UIViewController?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController(nibName: nil, bundle: nil)
        vc.coordinator = self
        currentViewController = vc
        navigationController.pushViewController(vc, animated: true)
    }
    
    func productPush() {
        let vc = ProductViewController(nibName: "Product", bundle: nil)
        currentViewController = vc
        navigationController.pushViewController(vc, animated: true)
        vc.title = "Product"
    }
}
