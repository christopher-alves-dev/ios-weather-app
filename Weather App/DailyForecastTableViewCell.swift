//
//  DailyForecastTableViewCell.swift
//  Weather App
//
//  Created by Christopher Alves on 24/06/24.
//

import UIKit

class DailyForecastTableViewCell: UITableViewCell {
    static let identifier: String = "DailyForecast"
    
    private lazy var weekDayLabel: UILabel = {
       let label = UILabel()
        label.setTranslateAutoResizingToFalse()
        
        label.text = "TER"
        label.textColor = UIColor.contrastColor
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        
        return label
    }()
    
    private lazy var minTemperatureLabel: UILabel = {
       let label = UILabel()
        label.setTranslateAutoResizingToFalse()
        
        label.text = "min 24ºC"
        label.textColor = UIColor.contrastColor
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        
        return label
    }()
    
    private lazy var maxTemperatureLabel: UILabel = {
       let label = UILabel()
        label.setTranslateAutoResizingToFalse()
        
        label.text = "max 37ºC"
        label.textColor = UIColor.contrastColor
        label.font = UIFont.systemFont(ofSize: 12, weight: .semibold)
        
        return label
    }()
    
    private lazy var iconImageView: UIImageView = {
        let imageView = UIImageView()
        
        imageView.setTranslateAutoResizingToFalse()
        imageView.contentMode = .scaleAspectFit
        imageView.image = UIImage(named: "cloudIcon")
        
        
        return imageView
    }()
    
    private lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [
            weekDayLabel,
            iconImageView,
            minTemperatureLabel,
            maxTemperatureLabel
        ])
        
        stackView.setTranslateAutoResizingToFalse()
        
        stackView.axis = .horizontal
        stackView.isLayoutMarginsRelativeArrangement = true
        stackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 16, leading: 16, bottom: 16, trailing: 16)
        stackView.spacing = 15
        
        return stackView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupView()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .clear
        selectionStyle = .none
        setHierarchy()
        setConstraints()
       
    }
    
    private func setHierarchy() {
        contentView.addSubview(stackView)
    }
    
    private func setConstraints() {
        stackView.setConstraintsToParent(contentView)
        
        NSLayoutConstraint.activate([weekDayLabel.widthAnchor.constraint(lessThanOrEqualToConstant: 50)])
    }
}
