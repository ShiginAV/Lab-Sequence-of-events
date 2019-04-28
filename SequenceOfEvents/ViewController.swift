//
//  ViewController.swift
//  SequenceOfEvents
//
//  Created by Alexander on 27/04/2019.
//  Copyright © 2019 Alexander Shigin. All rights reserved.
//

import UIKit

var infoString = ""
class ViewController: UIViewController {
    @IBOutlet weak var infoLabel: UILabel?
    var isViewDidLoad = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        isViewDidLoad = true
        infoString = ""
        self.addInfo(#function)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
  
        if !isViewDidLoad {
            infoString = ""
        }
        self.addInfo(#function)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
     
        self.addInfo(#function)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        self.addInfo(#function)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)

        isViewDidLoad = false
        self.addInfo(#function)
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
     
        self.addInfo(#function)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    
        self.addInfo(#function)
    }
    
    func addInfo(_ function: String) {
        infoString += "\(self.title ?? "no title") - \(function)\n"
        if let infoLabel = infoLabel {
            infoLabel.text = infoString
        }
    }
}

