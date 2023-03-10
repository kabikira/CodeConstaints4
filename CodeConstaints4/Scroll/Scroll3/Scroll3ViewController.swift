//
//  Scroll3ViewController.swift
//  CodeConstaints4
//
//  Created by koala panda on 2023/03/09.
//

import UIKit

class Scroll3ViewController: UIViewController {
    var scrollView: UIScrollView!
    var scrollContentsView: UIStackView!
    var page1View: UIView!
    var page2View: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        view = UIView()
        view.backgroundColor = .white
        scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        
        page1View = UIView()
        page1View.backgroundColor = .yellow
        page1View.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(page1View)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            page1View.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            page1View.trailingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.trailingAnchor),
            page1View.leadingAnchor.constraint(equalTo: scrollView.contentLayoutGuide.leadingAnchor),
            page1View.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            page1View.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor, multiplier: 1),
            page1View.heightAnchor.constraint(equalTo: scrollView.frameLayoutGuide.heightAnchor, multiplier: 2),
            
        ])
        
    }
    
}
