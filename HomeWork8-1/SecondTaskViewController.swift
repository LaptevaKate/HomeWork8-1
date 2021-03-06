//
//  SecondTaskViewController.swift
//  HomeWork8-1
//
//  Created by Екатерина Лаптева on 3.03.22.
//

import UIKit

class SecondTaskViewController: UIViewController {
  
    //MARK: - Properties
    
    private let sizeConst: CGFloat = 40
    var label: UILabel!
    
    //MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initLabel()
    }
    //MARK: - Methods
    
    func initLabel() {
        label = UILabel()
        label.frame.size = CGSize(width: sizeConst, height: sizeConst)
        label.layer.cornerRadius = sizeConst / 2
        label.backgroundColor = .blue
        label.layer.masksToBounds = true
        label.center.x = view.center.x
        label.center.y = view.center.y
        self.view.addSubview(label)
    }
  
    //MARK: - IBActions
    
    @IBAction func close(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func swipe(_ sender: UISwipeGestureRecognizer) {
   
        switch sender.direction{
        case .down:
            label.frame.origin.y += 20
        case .up:
            label.frame.origin.y -= 20
        case .right:
            label.frame.origin.x += 20
        case .left:
            label.frame.origin.x -= 20
            default:
            break
        }
    }
}
