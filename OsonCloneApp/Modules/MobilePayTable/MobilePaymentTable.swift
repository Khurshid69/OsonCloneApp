//
//  MobilePaymentTable.swift
//  OsonCloneApp
//
//  Created by user on 06/01/22.
//

import UIKit

class MobilePaymentTable: UIViewController {

    private(set) lazy var tableView: UITableView = {
        let view = UITableView()
        view.delegate = self
        view.dataSource = self
        view.register(MobileOperatorsCell.self)
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        
        return view
    }()
    
    private let reuseIdentifer = "MobileOperatorsCell"

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(tableView)
        setTableViewConstraints()
        setupCustomBackButton(withTitle: "Мобильные операторы")
        setupSearchButton()
    }
    func setupCustomBackButton(withTitle title: String) {
        let width = width(ofText: title) + 36
        let backButton = UIButton(frame: .init(origin: .zero, size: .init(width: width, height: .leastNonzeroMagnitude)))
        backButton.setImage(UIImage(named: "icon_arrow_back")?.withRenderingMode(.alwaysTemplate), for: .normal)
        backButton.setTitle(title, for: .normal)
        backButton.setTitleColor(UIColor(red: 0.262, green: 0.262, blue: 0.262, alpha: 1), for: .normal)
        backButton.tintColor = .black
        backButton.titleLabel?.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        backButton.imageEdgeInsets = .init(top: 0, left: 0, bottom: 0, right: 12)
        backButton.titleEdgeInsets = .init(top: 0, left: 12, bottom: 0, right: -55)
        backButton.addTarget(self, action: #selector(backButtonClicked), for: .touchUpInside)
        
        let barButtonItem = UIBarButtonItem(customView: backButton)
        navigationItem.leftBarButtonItem = barButtonItem
        
    }
    
    func setupSearchButton() {
        let size: CGFloat = 2
        let searchButton = UIButton(frame: .init(origin: .zero, size: .init(width: size, height: size)))
        searchButton.setImage(UIImage(named: "search-alt-1")?.withRenderingMode(.alwaysTemplate), for: .normal)
        searchButton.tintColor = .black
        searchButton.backgroundColor = .white
        searchButton.imageEdgeInsets = .init(top: 10, left: 43, bottom: 10, right: 5)
        
        let barButtonItem = UIBarButtonItem(customView: searchButton)
        navigationItem.rightBarButtonItem = barButtonItem
    }
    
    @objc private func backButtonClicked() {
        navigationController?.popViewController(animated: true)
    }
    
    @objc private func searchButtonClicked() { }
    
    private func width(ofText text: String) -> CGFloat {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        label.text = text
        label.sizeToFit()
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label.bounds.width
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

extension MobilePaymentTable: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.reusableCell(MobileOperatorsCell.self, for: indexPath)
        let mobileOperatorOption = MobileOperators(rawValue: indexPath.row)
        cell.iconImageView.image = mobileOperatorOption?.image
        cell.bonusIv.image = mobileOperatorOption?.bonusImage
        cell.operatorName.text = mobileOperatorOption?.description
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 61
    }
}

