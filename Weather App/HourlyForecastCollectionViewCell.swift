//
//  HourlyForecastCollectionViewCell.swift
//  Weather App
//
//  Created by Christopher Alves on 22/06/24.
//

import UIKit

class HourlyForecastCollectionViewCell: UICollectionViewCell {
    static let identifier: String = "HourlyForecast"
    
    private lazy var stackView: UIStackView = {
       let stackView = UIStackView(arrangedSubviews: [hourLabel, iconImageView, temperatureLabel])
        stackView.setTranslateAutoResizingToFalse()
        
        stackView.axis = .vertical
        stackView.spacing = 4
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 8, leading: 8, bottom: 8, trailing: 8)
        stackView.layer.borderWidth = 1
        stackView.layer.borderColor = UIColor.contrastColor?.cgColor
        stackView.layer.cornerRadius = 20
        
        return stackView
    }()
    private lazy var hourLabel: UILabel = {
       let label = UILabel()
        label.setTranslateAutoResizingToFalse()
        
        label.textColor = UIColor.contrastColor
        label.font = UIFont.systemFont(ofSize: 10, weight: .semibold)
        label.textAlignment = .center
        
        return label
    }()
    
    private lazy var temperatureLabel: UILabel = {
       let label = UILabel()
        label.setTranslateAutoResizingToFalse()
        
        label.textColor = UIColor.contrastColor
        label.font = UIFont.systemFont(ofSize: 14, weight: .semibold)
        label.textAlignment = .center
        
        return label
    }()
    
    private lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.setTranslateAutoResizingToFalse()
        
        imageView.contentMode = .scaleAspectFit
        
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadData(time: String?, icon: UIImage?, temp: String?){
        hourLabel.text = time
        iconImageView.image = icon
        temperatureLabel.text = temp
    }
    
    private func setupView() {
        setHierarchy()
        setConstraints()
    }
    
    private func setHierarchy() {
        contentView.addSubview(stackView)
    }
    
    private func setConstraints() {
        stackView.setConstraintsToParent(contentView)
        
        NSLayoutConstraint.activate([
            iconImageView.heightAnchor.constraint(equalToConstant: 33)
        ])
    }
}
