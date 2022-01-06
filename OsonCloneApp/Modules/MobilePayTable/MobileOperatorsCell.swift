//
//  MobileOperatorsCell.swift
//  OsonCloneApp
//
//  Created by user on 06/01/22.
//

import UIKit

class MobileOperatorsCell: UITableViewCell {
    // MARK: - Properties
    let iconImageView: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        return iv
    }()
    
    let operatorName: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.text = "Sample text"
        label.textColor = UIColor(red: 0.267, green: 0.267, blue: 0.267, alpha: 1)
        label.font = UIFont(name: "Lato-Regular", size: 16)
        
        return label
    }()
    
    let bonusIv: UIImageView = {
        let iv = UIImageView()
        iv.contentMode = .scaleAspectFit
        iv.clipsToBounds = true
        return iv
    }()
    
    // MARK: - Init
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = .none
        addSubview(iconImageView)
        addSubview(operatorName)
        addSubview(bonusIv)
        
        setUpConstraints()
    }
    
    // MARK: - Init
    
    private func setUpConstraints(){
        iconImageView.translatesAutoresizingMaskIntoConstraints = false
        iconImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        iconImageView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        iconImageView.heightAnchor.constraint(equalToConstant: 60).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 72).isActive = true

        operatorName.translatesAutoresizingMaskIntoConstraints = false
        operatorName.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        operatorName.leftAnchor.constraint(equalTo: iconImageView.rightAnchor, constant: 24).isActive = true
        
        bonusIv.translatesAutoresizingMaskIntoConstraints = false
        bonusIv.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        bonusIv.leftAnchor.constraint(equalTo: operatorName.rightAnchor, constant: 14).isActive = true
        bonusIv.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -16).isActive = true
        bonusIv.heightAnchor.constraint(equalToConstant: 25).isActive = true
        bonusIv.widthAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
