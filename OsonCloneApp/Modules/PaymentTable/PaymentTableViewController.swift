//
//  ViewController.swift
//  OsonCloneApp
//
//  Created by user on 06/01/22.
//

import UIKit

class PaymentTableViewController: UIViewController {
    private(set) lazy var tableView: UITableView = {
        let view = UITableView()
        view.delegate = self
        view.dataSource = self
        view.register(PaymentCategoriesCell.self)
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private let reuseIdentifer = "PaymentCategoriesCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        setTableViewConstraints()
        
    }
    
    // MARK: - SetUpConstraints
    private func setTableViewConstraints() {
        NSLayoutConstraint.activate([
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor),
            tableView.topAnchor.constraint(equalTo: view.topAnchor)
        ])
    }
}

extension PaymentTableViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.reusableCell(PaymentCategoriesCell.self, for: indexPath)
        let paymentOption = PaymentOptionCatigories(rawValue: indexPath.row)
        cell.descriptionLabel.text = paymentOption?.description
        cell.iconImageView.image = paymentOption?.image
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = MobilePaymentTable()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}

