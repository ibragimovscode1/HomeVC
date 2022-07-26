//
//  HomeVC.swift
//  HomeVC
//
//  Created by Rahmetullah on 26.07.2022.
//

import UIKit

class HomeVC: UIViewController {
    //MARK: - Properties
    private let headerView = UIImageView()
    private let mainContainerView = UIView()
    private let autoPaymentStackView = UIStackView()
    private let autoPaymentImage = UIImageView()
    private let autoPaymentLabel = UILabel()
        
    private let dismissViewButton = UIButton()
    private let dismissViewButtonImage = UIImageView()
    
    private let centeredCalendarImage = UIImageView()
    private let nopaymentStackview = UIStackView()
    private let nopaymentLabel = UILabel()
    private let nopaymentSubLabel = UILabel()
    
    private let addPaymentContainerView = UIView()
    private let addPaymentStackView = UIStackView()
    private let addPaymentButton = UIButton()
    private let addPaymentDetailsLabel = UILabel()
    private let addPaymentImage = UIImageView()
    
    
    
    
    
   
    //MARK: - LifeSycle
    

    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        setupNavBar()
        view.backgroundColor = .systemGray
    }
        //MARK: - Helpers
        private func configUI(){
          //  HeaderView
            view.addSubview(headerView)
            headerView.translatesAutoresizingMaskIntoConstraints = false
            headerView.image = UIImage(named: "home_background")
            NSLayoutConstraint.activate([
                headerView.topAnchor.constraint(equalTo: view.topAnchor),
                headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            ])
            
            
            
            //MainContainerView
            view.addSubview(mainContainerView)
            mainContainerView.translatesAutoresizingMaskIntoConstraints = false
            mainContainerView.backgroundColor = .systemBackground
            mainContainerView.layer.cornerRadius = 32
           
            //MainContainerViewConstraints
            NSLayoutConstraint.activate([
                mainContainerView.topAnchor.constraint(equalTo: view.topAnchor,constant: 118),
                mainContainerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                mainContainerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                mainContainerView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 94)
            ])
            
            //CenteredCalendarImage
            view.addSubview(centeredCalendarImage)
            centeredCalendarImage.translatesAutoresizingMaskIntoConstraints = false
            centeredCalendarImage.image = UIImage(named: "calendar")
            centeredCalendarImage.contentMode = .scaleAspectFill
        
            //CalendarImage Constraints
            NSLayoutConstraint.activate([
                centeredCalendarImage.centerXAnchor.constraint(equalTo: mainContainerView.centerXAnchor),
                centeredCalendarImage.topAnchor.constraint(equalTo: mainContainerView.topAnchor, constant: 96.86),
                centeredCalendarImage.widthAnchor.constraint(equalToConstant: 206.54),
                centeredCalendarImage.heightAnchor.constraint(equalToConstant: 186.5),
            ])
            
            //AutoPaymentStackView
            view.addSubview(autoPaymentStackView)
            autoPaymentStackView.translatesAutoresizingMaskIntoConstraints = false
            autoPaymentStackView.axis = .horizontal
            autoPaymentStackView.spacing = 10
            
            //AutopaymetStackView constraints
            NSLayoutConstraint.activate([
                autoPaymentStackView.topAnchor.constraint(equalTo: mainContainerView.topAnchor, constant: 20),
                autoPaymentStackView.leadingAnchor.constraint(equalTo: mainContainerView.leadingAnchor, constant: 20),
                autoPaymentStackView.trailingAnchor.constraint(equalTo: mainContainerView.trailingAnchor, constant: -227),
                autoPaymentStackView.widthAnchor.constraint(equalToConstant: 128),
                autoPaymentStackView.heightAnchor.constraint(equalToConstant: 24),
            
            ])
            
            //AutoPaymentImage
            autoPaymentStackView.addArrangedSubview(autoPaymentImage)
            autoPaymentImage.image = UIImage(named: "line")
            autoPaymentImage.contentMode = .scaleAspectFit
            
            //AutoPaymentImageConstraints
            autoPaymentImage.widthAnchor.constraint(equalToConstant: 20).isActive = true
            autoPaymentImage.heightAnchor.constraint(equalToConstant: 18).isActive = true
            
            
            
            
            //AutoPaymentLabel
            autoPaymentStackView.addArrangedSubview(autoPaymentLabel)
            autoPaymentLabel.translatesAutoresizingMaskIntoConstraints = false
            autoPaymentLabel.text = "Автоплатеж"
            autoPaymentLabel.font = UIFont.systemFont(ofSize: 16)
            autoPaymentLabel.textColor = .black
            
            //dismissViewButton
            mainContainerView.addSubview(dismissViewButton)
            dismissViewButton.translatesAutoresizingMaskIntoConstraints = false
            dismissViewButtonImage.image = UIImage(named: "chevron_down")
            dismissViewButtonImage.contentMode = .scaleAspectFit
            dismissViewButton.setBackgroundImage(dismissViewButtonImage.image, for: .normal)
            
            //dismissViewButton Constraints
            NSLayoutConstraint.activate([
                dismissViewButton.trailingAnchor.constraint(equalTo: mainContainerView.trailingAnchor, constant: -20),
                dismissViewButton.topAnchor.constraint(equalTo: mainContainerView.topAnchor, constant: 20),
                dismissViewButton.widthAnchor.constraint(equalToConstant: 24),
                dismissViewButton.heightAnchor.constraint(equalToConstant: 24),
            ])
            
            //NoPaymentStackView
            mainContainerView.addSubview(nopaymentStackview)
            nopaymentStackview.translatesAutoresizingMaskIntoConstraints = false
            nopaymentStackview.spacing = 8
            nopaymentStackview.axis = .vertical
            nopaymentStackview.alignment = .center
            //Constraints
            NSLayoutConstraint.activate([
                nopaymentStackview.leadingAnchor.constraint(equalTo: mainContainerView.leadingAnchor, constant: 20),
                nopaymentStackview.trailingAnchor.constraint(equalTo: mainContainerView.trailingAnchor, constant: -20),
//                nopaymentStackview.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -194),
                nopaymentStackview.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            ])
           
            //NoPaymentLabel
            nopaymentStackview.addArrangedSubview(nopaymentLabel)
            nopaymentLabel.translatesAutoresizingMaskIntoConstraints = false
            nopaymentLabel.numberOfLines = 0
            nopaymentLabel.text = "У вас пока нет автоплатежей"
            nopaymentLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
            nopaymentLabel.textColor = .black
            
            //NoPaymentSublabel
            nopaymentStackview.addArrangedSubview(nopaymentSubLabel)
            nopaymentSubLabel.translatesAutoresizingMaskIntoConstraints = false
            nopaymentSubLabel.numberOfLines = 0
            nopaymentSubLabel.lineBreakMode = .byWordWrapping
            nopaymentSubLabel.text = "Автоплатеж  позволяет проводить регулярные платежи и переводы, согласно расписанию, что избавляет вас от рутинных операций"
            nopaymentSubLabel.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
            nopaymentSubLabel.textColor = .systemGray
            
            //Add Payment ContainerView
            mainContainerView.addSubview(addPaymentContainerView)
            addPaymentContainerView.translatesAutoresizingMaskIntoConstraints = false
            addPaymentContainerView.layer.cornerRadius = 5
            addPaymentContainerView.backgroundColor = UIColor(rgb: 0x334055)
                                                              

            //Constraints
            NSLayoutConstraint.activate([
                addPaymentContainerView.leadingAnchor.constraint(equalTo: mainContainerView.leadingAnchor, constant: 20),
                addPaymentContainerView.trailingAnchor.constraint(equalTo: mainContainerView.trailingAnchor, constant: -20),
                addPaymentContainerView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
                addPaymentContainerView.heightAnchor.constraint(equalToConstant: 56),
                addPaymentContainerView.widthAnchor.constraint(equalToConstant: 335),
            ])
            //Add Payment Stackview
            addPaymentContainerView.addSubview(addPaymentStackView)
            addPaymentStackView.translatesAutoresizingMaskIntoConstraints = false
            addPaymentStackView.axis = .horizontal
            addPaymentStackView.spacing = 8
            addPaymentStackView.alignment = .center
            addPaymentStackView.distribution = .fill
            //Constraints
            NSLayoutConstraint.activate([
                addPaymentStackView.heightAnchor.constraint(equalTo: addPaymentContainerView.heightAnchor),
                addPaymentStackView.widthAnchor.constraint(equalTo: addPaymentContainerView.widthAnchor),
                addPaymentStackView.leadingAnchor.constraint(equalTo: addPaymentContainerView.leadingAnchor,constant: 14),
                addPaymentStackView.trailingAnchor.constraint(equalTo: addPaymentContainerView.trailingAnchor, constant: -14),
            ])
            
            //Add Payment Image
            addPaymentStackView.addArrangedSubview(addPaymentImage)
            addPaymentImage.translatesAutoresizingMaskIntoConstraints = false
            addPaymentImage.image = UIImage(named: "add_payment")
            addPaymentImage.setContentHuggingPriority(UILayoutPriority.init(251), for: .horizontal)
            
            
            addPaymentStackView.addArrangedSubview(addPaymentDetailsLabel)
            addPaymentDetailsLabel.translatesAutoresizingMaskIntoConstraints = false
            addPaymentDetailsLabel.text = "Добавьте автоплатежи и не \nзабывайте о платежах"
            addPaymentDetailsLabel.numberOfLines = 0
//            addPaymentDetailsLabel.lineBreakMode = .byWordWrapping
            addPaymentDetailsLabel.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
            addPaymentDetailsLabel.textColor = .white
            addPaymentDetailsLabel.backgroundColor = .systemBlue
//            addPaymentDetailsLabel.setContentHuggingPriority(UILayoutPriority.init(250), for: .horizontal)
            
            
            //AddPaymentButton
            addPaymentStackView.addArrangedSubview(addPaymentButton)
            addPaymentButton.translatesAutoresizingMaskIntoConstraints = false
            addPaymentButton.setTitle("Добавить", for: .normal)
            addPaymentButton.titleLabel?.font = UIFont.systemFont(ofSize: 12)
            let addPaymentButtonImage = UIImageView()
            addPaymentButtonImage.image = UIImage(named: "add_button")
            addPaymentButton.setBackgroundImage(addPaymentButtonImage.image, for: .normal)
            //Constraints
            NSLayoutConstraint.activate([
                addPaymentButton.widthAnchor.constraint(equalToConstant: 115),
                addPaymentButton.heightAnchor.constraint(equalToConstant: 32),
                
            
            ])
            
            
            
            
            
            
            
            
            
        
                        
            
            
            
            
            
            
        }
    private func setupNavBar() {
        var image = UIImage(named: "logo")
        image = image?.withRenderingMode(.alwaysOriginal)
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: .done, target: self, action: nil)
       
        
        var rightImage = UIImage(named: "notification")
        rightImage = rightImage?.withRenderingMode(.alwaysOriginal)
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: rightImage, style: .done, target: self, action: nil)
        
         
    }
           
        //MARK: - Selectors

    }
    


