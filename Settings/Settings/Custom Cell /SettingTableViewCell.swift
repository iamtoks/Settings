//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Adetokunbo Babatunde on 6/3/21.
//

import UIKit

// 1) Create the protocol (BOSS)
protocol SettingCellDelegate: AnyObject {
    // 1.5) State what the boss can do
    func settingSwitchToggled(cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {
    
    // MARK: - Outlets
    @IBOutlet weak var settingIconImageView: UIImageView!
    @IBOutlet weak var settingNameLabel: UILabel!
    @IBOutlet weak var settingSwitch: UISwitch!
    
    // 2) Set the delegate - Who the boss' employee is
    weak var delegate: SettingCellDelegate?
    
    // MARK: - Actions
    @IBAction func settingSwitchToggled(_ sender: Any) {
        // Communicate to delegate (employee) instruction
        delegate?.settingSwitchToggled(cell: self)
    }
    
    // MARK: - Helper Functions
    func updateViews(setting: Setting) {
        settingIconImageView.image = setting.icon
        settingNameLabel.text = setting.name
        settingSwitch.isOn = setting.isOn
        if setting.isOn {
            backgroundColor = .cyan
        } else {
            backgroundColor = .white
        }
    }
}
