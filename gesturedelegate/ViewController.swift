//
//  ViewController.swift
//  gesturedelegate
//
//  Created by Alina on 5.10.22.
//

import UIKit

class ViewController: UIViewController  {
    
    @IBOutlet weak var topView: TopView! {
        didSet  { topView.delegate = self
        }
    }
    
    @IBOutlet weak var bottomView: BottomView!{
        didSet{
            bottomView.delegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension ViewController: GestureDelegate {
    func didTap(_ view: UIView) {
        if topView === view {
            print ("top")
        } else if bottomView === view {
                print ("bottom")
            }
        }
        
    }

