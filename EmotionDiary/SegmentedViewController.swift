//
//  SegmentedViewController.swift
//  EmotionDiary
//
//  Created by CHOI on 2022/07/12.
//

import UIKit

enum MusicType: Int {
    case all = 0
    case korea = 1
    case other = 2
}

class SegmentedViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var segmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        segmentControlValueChanged(segmentControl)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func segmentControlValueChanged(_ sender: Any) {
        
        if segmentControl.selectedSegmentIndex == MusicType.all.rawValue {
            
        } else if segmentControl.selectedSegmentIndex == MusicType.korea.rawValue {
            
        }
        
        
        if segmentControl.selectedSegmentIndex == 0 {
            resultLabel.text = "첫번째 선택"
        } else if segmentControl.selectedSegmentIndex == 1 {
            resultLabel.text = "두번째 선택"
        } else if segmentControl.selectedSegmentIndex == 2 {
            resultLabel.text = "세번째 선택"
        } else {
            resultLabel.text = "오류"
        }
        
    }
    
}
