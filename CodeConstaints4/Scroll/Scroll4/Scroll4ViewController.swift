//
//  Scroll4ViewController.swift
//  CodeConstaints4
//
//  Created by koala panda on 2023/03/09.
//

import UIKit

class Scroll4ViewController: UIViewController {
    var scrollView: UIScrollView!
    var scrollContentsView: UIStackView!
    var page1View: UIView!
    var page2View: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(scrollView)
        
        scrollContentsView = UIStackView()
        scrollContentsView.backgroundColor = .orange
        scrollContentsView.axis = .vertical
        scrollContentsView.alignment = .fill
        scrollContentsView.distribution = .fill
        scrollContentsView.spacing = 0
        scrollContentsView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(scrollContentsView)
        
        page1View = UIView()
        page1View.backgroundColor = .blue
        page1View.translatesAutoresizingMaskIntoConstraints = false
        scrollContentsView.addArrangedSubview(page1View)

        page2View = UIView()
        page2View.backgroundColor = .purple
        page2View.translatesAutoresizingMaskIntoConstraints = false
        scrollContentsView.addArrangedSubview(page2View)
        
        NSLayoutConstraint.activate([
            // scrollViewの制約
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            // scrollContentsViewの制約
            scrollContentsView.topAnchor.constraint(equalTo: scrollView.contentLayoutGuide.topAnchor),
            scrollContentsView.bottomAnchor.constraint(equalTo: scrollView.contentLayoutGuide.bottomAnchor),
            scrollContentsView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollContentsView.leadingAnchor.constraint(equalTo: scrollView.frameLayoutGuide.leadingAnchor),
            scrollContentsView.widthAnchor.constraint(equalTo: scrollView.contentLayoutGuide.widthAnchor, multiplier: 1),
            // pageViewの制約
            page1View.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor, multiplier: 1),
            page1View.heightAnchor.constraint(equalTo: scrollView.frameLayoutGuide.heightAnchor, multiplier: 1),
            page2View.widthAnchor.constraint(equalTo: scrollView.frameLayoutGuide.widthAnchor, multiplier: 1),
            page2View.heightAnchor.constraint(equalTo: scrollView.frameLayoutGuide.heightAnchor, multiplier: 1),
           
        ])
    }
}

