//
//  SettingsViewController.swift
//  GithubDemo
//
//  Created by Julian Test on 2/21/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    weak var delegate: SettingsPresentingViewControllerDelegate?
    @IBOutlet weak var starsNumLabel: UILabel!
    @IBOutlet weak var starsNumSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        starsNumLabel.text = "\(Int(starsNumSlider.value))"
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onCancel(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func sliderValChanged(_ sender: UISlider) {
        var currentVal = Int(sender.value)
        
        starsNumLabel.text = "\(currentVal)"
    }
	
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let navController = segue.destination as! UINavigationController
        let vc = navController.topViewController as! SettingsViewController
    }
 

}

protocol SettingsPresentingViewControllerDelegate: class {
    func didSaveSettings(settings: GithubRepoSearchSettings)
    func didCancelSettings()
}
