//
//  DetailViewController.swift
//  StoreSearch
//
//  Created by Leonardo Rubiano on 11/5/18.
//  Copyright © 2018 leofofeo. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var popupView: UIView!
    @IBOutlet weak var artworkImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var kindLabel: UILabel!
    @IBOutlet weak var genreLabel: UILabel!
    @IBOutlet weak var priceButton: UIButton!
    
    
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.tintColor = UIColor(red: 20/255, green: 160/255, blue: 160/255, alpha: 1)
        
        let tintColor = view.tintColor
        
        popupView.layer.cornerRadius = 10
        priceButton.tintColor = tintColor
        priceButton.layer.borderWidth = 1
        priceButton.layer.cornerRadius = 10
        priceButton.layer.borderColor = tintColor?.cgColor
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        modalPresentationStyle = .custom
        transitioningDelegate = self
    }
}

extension DetailViewController: UIViewControllerTransitioningDelegate {
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
        return DimmingPresentationController(presentedViewController: presented, presenting: presenting)
    }
}
