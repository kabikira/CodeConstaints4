//
//  Stack1ViewController.swift
//  CodeConstaints4
//
//  Created by koala panda on 2023/03/10.
//

import UIKit

class Stack1ViewController: UIViewController {
    var stackView: UIStackView!
    var sub2: UILabel!
    var testLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view = UIView()
        view.backgroundColor = .white
        
        stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.alignment = .fill
        stackView.distribution = .fillEqually
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(stackView)
        
        sub2 = UILabel()
        sub2.text = "Sub1"
        sub2.backgroundColor = .yellow
        sub2.textAlignment = .center
        stackView.addArrangedSubview(sub2)
        
        testLabel = UILabel()
        testLabel.text = "testLabel"
        testLabel.backgroundColor = .orange
        testLabel.textAlignment = .center
        stackView.addArrangedSubview(testLabel)
        
        let constaints: [NSLayoutConstraint] = [
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ]
        NSLayoutConstraint.activate(constaints)

        // Do any additional setup after loading the view.
    }
    

    

}
