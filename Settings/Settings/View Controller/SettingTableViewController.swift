//
//  SettingTableViewController.swift
//  Settings
//
//  Created by Adetokunbo Babatunde on 6/3/21.
//

import UIKit

class SettingTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return SettingController.shared.settings.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell else { return UITableViewCell() }
        
        let setting = SettingController.shared.settings[indexPath.row]
        
        cell.delegate = self
        cell.updateViews(setting: setting)
        return cell
    }
}

extension SettingTableViewController: SettingCellDelegate {
    func settingSwitchToggled(cell: SettingTableViewCell) {
        print("Employee hears boss say setting switch was toggled.")
        guard let indexPath = tableView.indexPath(for: cell) else {return}
        let setting = SettingController.shared.settings[indexPath.row]
        SettingController.shared.toggleIsOn(setting: setting)
        cell.updateViews(setting: setting)
    }
}
