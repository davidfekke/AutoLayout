//
//  ViewController.swift
//  AutoLayout
//
//  Created by David Fekke on 4/29/22.
//

import UIKit

class ViewController: UIViewController {
    var coordinator: MainCoordinator?
    
    let mainTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Title"
        textView.textAlignment = .center
        textView.font = UIFont.boldSystemFont(ofSize: 24.0)
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    let labelTextView: UITextView = {
        let textView = UITextView()
        textView.text = "Label"
        textView.textAlignment = .left
        textView.font = UIFont.systemFont(ofSize: 17.0)
        
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    lazy var btn: UIButton = {
        let button = UIButton(type: .roundedRect)
        button.setTitle("Push Me", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(pressMe(_:)), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        setupViews()
        // Do any additional setup after loading the view.
    }

    override func loadView() {
        super.loadView()
        
    }
    
    private func setupViews() {
        view.addSubview(mainTextView)
        view.addSubview(labelTextView)
        view.addSubview(btn)
        
        mainTextView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 8).isActive = true
        mainTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        mainTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        mainTextView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        labelTextView.topAnchor.constraint(equalTo: mainTextView.bottomAnchor, constant: 8).isActive = true
        labelTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        labelTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        labelTextView.heightAnchor.constraint(equalToConstant: 32).isActive = true
        
        btn.topAnchor.constraint(equalTo: labelTextView.bottomAnchor, constant: 8).isActive = true
        btn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8).isActive = true
        btn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8).isActive = true
        btn.heightAnchor.constraint(equalToConstant: 32).isActive = true
    }
    
    @objc func pressMe(_ sender: UIButton) {
        _ = sender
        print("Button pushed")
        coordinator?.productPush()
    }

}

