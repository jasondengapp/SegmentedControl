//
//  ViewController.swift
//  ScrollView
//
//  Created by Jason Deng on 2020/11/27.
//

import UIKit

class ViewController: UIViewController {
    
    let bodyStyle: [UIImage?] = [UIImage(named: "body1"), UIImage(named: "body2"), UIImage(named: "body3"), UIImage(named: "body4"), UIImage(named: "body5")]
    let faceStyle: [UIImage?] = [UIImage(named: "face1"), UIImage(named: "face2"), UIImage(named: "face3"), UIImage(named: "face4"), UIImage(named: "face5")]
    let headStyle: [UIImage?] = [UIImage(named: "head1"), UIImage(named: "head2"), UIImage(named: "head3"), UIImage(named: "head4"), UIImage(named: "head5")]
    

    @IBOutlet weak var faceUIImageView: UIImageView!
    @IBOutlet weak var glassesUIImageView: UIImageView!
    @IBOutlet weak var headUIImageView: UIImageView!
    @IBOutlet weak var bodyUIImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func bodyChange(_ sender: UIButton) {
        bodyUIImageView.image = sender.currentImage
    }
    @IBAction func headChange(_ sender: UIButton) {
        headUIImageView.image = sender.currentImage
    }
    
    @IBAction func faceChange(_ sender: UIButton) {
        faceUIImageView.image = sender.currentImage
    }
    
    @IBAction func glassesChange(_ sender: UIButton) {
        glassesUIImageView.image = sender.currentImage
    }
    
    @IBAction func disableGlasses(_ sender: Any) {
        glassesUIImageView.image = nil
    }
    
    @IBAction func styleSelect(_ sender: UISegmentedControl) {
        glassesUIImageView.image = nil
        
        switch sender.selectedSegmentIndex {
        case 0:
            faceUIImageView.image = faceStyle[Int.random(in: 0...4)]
            headUIImageView.image = headStyle[Int.random(in: 0...4)]
            bodyUIImageView.image = bodyStyle[Int.random(in: 0...4)]
            glassesUIImageView.image = UIImage(named: "Glasses 5")
            
        case 1:
            faceUIImageView.image = faceStyle[Int.random(in: 0...4)]
            headUIImageView.image = headStyle[Int.random(in: 0...4)]
            bodyUIImageView.image = bodyStyle[1]
        case 2:
            faceUIImageView.image = faceStyle[2]
            headUIImageView.image = headStyle[Int.random(in: 0...4)]
            bodyUIImageView.image = bodyStyle[Int.random(in: 0...4)]
        case 3:
            faceUIImageView.image = faceStyle[Int.random(in: 0...4)]
            headUIImageView.image = headStyle[3]
            bodyUIImageView.image = bodyStyle[Int.random(in: 0...4)]
        default:
            break
        }
    }
        
        
}
    
    


