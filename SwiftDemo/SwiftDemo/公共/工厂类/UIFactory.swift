//
//  File.swift
//  SwiftDemo
//
//  Created by MacBook on 27/05/2022.
//  Copyright © 2022 DEMO. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    static func naviStyleLabel(title: String?) -> UILabel {
        let result = UILabel()
        result.font = UIFont.systemFont(ofSize: 12)
        result.textColor = .black
        result.text = title
        return result
    }
}
