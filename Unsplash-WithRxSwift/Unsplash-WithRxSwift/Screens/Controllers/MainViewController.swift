//
//  MainViewController.swift
//  Unsplash-WithRxSwift
//
//  Created by taehy.k on 2021/10/12.
//

import UIKit

class MainViewController: UIViewController {
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupAttributes()
        setupNavigationBar()
    }
    
    private func setupAttributes() {
        view.backgroundColor = .darkGray
    }
    
    private func setupNavigationBar() {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 50, height: 20))
        imageView.contentMode = .scaleAspectFit
        imageView.image = Image.logoImageUnsplash
        navigationItem.titleView = imageView
        

        let logoIcon = UIBarButtonItem(image: Image.logoIconUnsplash, style: .plain, target: self, action: nil)
        navigationItem.leftBarButtonItem = logoIcon
    }
}
