//
//  FirstTaskViewController.swift
//  HomeWork8-1
//
//  Created by Екатерина Лаптева on 3.03.22.
//

import UIKit

class FirstTaskViewController: UIViewController {

    //MARK: - Properties
    
    var views:[UIView] = []
    
    //MARK: - ViewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - IBActions
    
    @IBAction func close(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
    @IBAction func tap(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
       
        let movingView = UIView()
        movingView.backgroundColor = .purple
        movingView.frame = CGRect(x: location.x - 30, y: location.y - 30, width: 60, height: 60)
        movingView.layer.cornerRadius = 30
        movingView.layer.masksToBounds = true
        
        for element in 0..<views.count {
            if views[element].frame.contains(location){
                views[element].removeFromSuperview()
                views.remove(at: element)
                return
            }
        }
        views.append(movingView)
        view.addSubview(movingView)
    }
}
