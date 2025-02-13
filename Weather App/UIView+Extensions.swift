//
//  UIView+Extensions.swift
//  Weather App
//
//  Created by Christopher Alves on 24/06/24.
//

import Foundation
import UIKit

extension UIView {
    func setTranslateAutoResizingToFalse () {
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func setConstraintsToParent(_ parent: UIView) {
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: parent.topAnchor),
            self.leadingAnchor.constraint(equalTo: parent.leadingAnchor),
            self.trailingAnchor.constraint(equalTo: parent.trailingAnchor),
            self.bottomAnchor.constraint(equalTo: parent.bottomAnchor)
        ])
    }
}
