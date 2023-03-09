//
//  LabelImageViewController.swift
//  CodeConstaints4
//
//  Created by koala panda on 2023/03/05.
//

import UIKit

class LabelImageViewController: UIViewController {
    var topView: UIView!
    var testLabel: UILabel!
    var bottomView: UIView!
    var testImage: UIImageView!
    
    override func loadView() {
        
        view = UIView()
        view.backgroundColor = .white
        
        topView = UIView()
        topView.backgroundColor = .orange
        topView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(topView)
        
        bottomView = UIView()
        bottomView.backgroundColor = .blue
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bottomView)
        
        testLabel = UILabel()
        testLabel.text = "あああああああaaaaaaaaaaaaaaaaaaaaaaaaaあああああああaaaaaaaaaaaaaaaaaaaaaaaaa"
        testLabel.font = .systemFont(ofSize: 21)
        testLabel.textAlignment = .left
        testLabel.textColor = .red
        testLabel.backgroundColor = .green
        testLabel.numberOfLines = 1
        testLabel.setContentHuggingPriority(UILayoutPriority(1000), for: .vertical)
        testLabel.setContentHuggingPriority(UILayoutPriority(1000), for: .horizontal)
        testLabel.setContentCompressionResistancePriority(UILayoutPriority(1000), for: .vertical)
        testLabel.setContentCompressionResistancePriority(UILayoutPriority(1000), for: .horizontal)
        
        topView.addSubview(testLabel)
        testLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let constraint = testLabel.bottomAnchor.constraint(equalTo: topView.bottomAnchor)
//        let constraint = NSLayoutConstraint(item: topView!, attribute: .bottom, relatedBy: .equal, toItem: testLabel, attribute: .bottom, multiplier: 1.0, constant: 0.0)
        constraint.priority = .defaultHigh
        constraint.isActive = true
        print(constraint.priority)
        
        testImage = UIImageView(image: UIImage(named: "test"))
        testImage.contentMode = .scaleAspectFit
        testImage.translatesAutoresizingMaskIntoConstraints = false
        bottomView.addSubview(testImage)
        
        
        let constraints: [NSLayoutConstraint] = [
            topView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            topView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            topView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            topView.heightAnchor.constraint(equalToConstant: 100),
            
            bottomView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.45),
            bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            testLabel.topAnchor.constraint(equalTo: topView.topAnchor),
            testLabel.trailingAnchor.constraint(equalTo: topView.trailingAnchor),
            testLabel.leadingAnchor.constraint(equalTo: topView.leadingAnchor),
            
            testImage.topAnchor.constraint(equalTo: bottomView.topAnchor),
            testImage.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor),
            testImage.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor),
            testImage.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor),
            
        ]
        NSLayoutConstraint.activate(constraints)
       
        
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadView()

       
    }
    


}
