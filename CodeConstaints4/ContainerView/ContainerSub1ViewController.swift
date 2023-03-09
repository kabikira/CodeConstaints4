//
//  ContainerSub1ViewController.swift
//  CodeConstaints4
//
//  Created by koala panda on 2023/03/06.
//

import UIKit

class ContainerSub1ViewController: UIViewController {
    var stackView: UIStackView!
    var sub1: UILabel!
    var sub2: UILabel!
    
    override func loadView() {
        view = UIView()
        view.backgroundColor = .red
        
        stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fill
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        sub1 = UILabel()
        sub1.text = "Sub1"
        sub1.textAlignment = .center
        stackView.addArrangedSubview(sub1)
        
        let constaints: [NSLayoutConstraint] = [
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ]
        NSLayoutConstraint.activate(constaints)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadView()

        
    }
    

    

}
