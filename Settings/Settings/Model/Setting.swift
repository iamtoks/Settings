//
//  Setting.swift
//  Settings
//
//  Created by Adetokunbo Babatunde on 6/3/21.
//

import UIKit

class Setting {
    
    let name: String
    let icon: UIImage
    var isOn: Bool
    
    init(name: String, icon: UIImage, isOn: Bool) {
        self.name = name
        self.icon = icon
        self.isOn = isOn
    }
}
