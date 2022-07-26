//
//  ViewController.swift
//  HomeVC
//
//  Created by Rahmetullah on 25.07.2022.
//

import UIKit

class TabBarController: UITabBarController {
   
    //MARK: - Properties


        
    
    
    
    //MARK: - LifeSycle
    
        override func viewDidLoad() {
        super.viewDidLoad()
            setupVC()
          
        }
         
            //MARK: - Helpers
            private func setupVC() {
                view.backgroundColor = .systemBackground
                 let homeVC = HomeVC()
                 let transferVC = TransferVC()
                 let paymentVC = PaymentVC()
                 let marketVC = MarketVC()
                 let myKarmonVC = MyKarmonVC()
              
                homeVC.tabBarItem.image = UIImage(named: "home")
                transferVC.tabBarItem.image = UIImage(named: "transfers")
                paymentVC.tabBarItem.image = UIImage(named: "payment")
                marketVC.tabBarItem.image = UIImage(named: "market")
                myKarmonVC.tabBarItem.image = UIImage(named: "mykarmon")
                
                
                let homeNC = UINavigationController(rootViewController: homeVC)
                viewControllers = [homeNC,transferVC,paymentVC,marketVC,myKarmonVC]
                
                tabBar.isTranslucent = false
                tabBar.tintColor = .systemBackground
            
            }
            
            
            //MARK: - Selectors
        
    


}

