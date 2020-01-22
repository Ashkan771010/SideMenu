//
//  HomeController.swift
//  SideMenu
//
//  Created by admin on 1/20/20.
//  Copyright © 2020 admin. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    var centerController: UIViewController!
    var delegate: HomeControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        configureNavigationBar()
    }
    @objc func handleMenuToggle() {
        delegate?.handleMenuToggle(forMenuOption: nil)
    }
    
    func configureNavigationBar() {
        navigationController?.navigationBar.barTintColor = .darkGray
        navigationController?.navigationBar.barStyle = .black
        navigationItem.title = "Side Menu"
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: #imageLiteral(resourceName: "ic_menu_white_3x").withRenderingMode(.alwaysOriginal) , style: .plain, target: self, action: #selector(handleMenuToggle))
        
    }
    
    @objc func myViewTapped(_ sender: UITapGestureRecognizer) {
        
     self.centerController.view.frame.origin.x = 0
        
    }
    
    
}
