//
//  ContainerMainViewController.swift
//  CodeConstaints4
//
//  Created by koala panda on 2023/03/06.
//

import UIKit

class ContainerMainViewController: UIViewController {
    @IBOutlet var container1View: UIView!
    
    func displayContentController(content: UIViewController, container: UIView) {
        addChild(content)
        content.view.translatesAutoresizingMaskIntoConstraints = false
        container.addSubview(content.view)
        NSLayoutConstraint.activate([
            content.view.topAnchor.constraint(equalTo: container.topAnchor),
            content.view.leadingAnchor.constraint(equalTo: container.leadingAnchor),
            content.view.rightAnchor.constraint(equalTo: container.rightAnchor),
            content.view.bottomAnchor.constraint(equalTo: container.bottomAnchor)
        ])

        content.didMove(toParent: self)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        displayContentController(content: ContainerSub1ViewController(), container: container1View)
    }
    
}
