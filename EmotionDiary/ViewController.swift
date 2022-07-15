//
//  ViewController.swift
//  EmotionDiary
//
//  Created by CHOI on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emotionFirstLabel: UILabel!
    @IBOutlet weak var emotionSecondLabel: UILabel!
    @IBOutlet weak var emotionThirdLabel: UILabel!
    @IBOutlet weak var emotionFourthLabel: UILabel!
    @IBOutlet weak var emotionFifthLabel: UILabel!
    @IBOutlet weak var emotionSixthLabel: UILabel!
    @IBOutlet weak var emotionSeventhLabel: UILabel!
    @IBOutlet weak var emotionEighthLabel: UILabel!
    @IBOutlet weak var emotionNinethLabel: UILabel!
    
    @IBOutlet weak var emotionFirstButton: UIButton!
    @IBOutlet weak var emotionSecondButton: UIButton!
    @IBOutlet weak var emotionThirdButton: UIButton!
    @IBOutlet weak var emotionFourthButton: UIButton!
    @IBOutlet weak var emotionFifthButton: UIButton!
    @IBOutlet weak var emotionSixthButton: UIButton!
    @IBOutlet weak var emotionSeventhButton: UIButton!
    @IBOutlet weak var emotionEighthButton: UIButton!
    @IBOutlet weak var emotionNinethButton: UIButton!
    
    // 감정 누른 횟수 배열
    var emotionNumArray = [0, 0, 0, 0, 0, 0, 0, 0, 0]
    
    // 감정 구분 배열
    var emotionArray = ["행복해", "사랑해", "좋아해", "화나", "심심해", "졸려", "당황해", "우울해", "속상해"]
    
    // Label 배열
    var labelArray: [UILabel] {
        [emotionFirstLabel, emotionSecondLabel, emotionThirdLabel, emotionFourthLabel, emotionFifthLabel, emotionSixthLabel, emotionSeventhLabel, emotionEighthLabel, emotionNinethLabel]
    }
    
    // Button 배열
    var btnArray: [UIButton] {
        [emotionFirstButton, emotionSecondButton, emotionThirdButton, emotionFourthButton, emotionFifthButton, emotionSixthButton, emotionSeventhButton, emotionEighthButton, emotionNinethButton]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for item in Range(0...8) {
            labelArray[item].text = "\(emotionArray[item]) \(emotionNumArray[item])"
        }
    
    }
    
    // MARK: 버튼 클릭 시 레이블 바꾸기
    @IBAction func emotionFirstButtonClicked(_ sender: UIButton) {
        emotionNumArray[sender.tag] += 1
        labelArray[sender.tag].text = "\(emotionArray[sender.tag]) \(emotionNumArray[sender.tag])"
    }
    
    @IBAction func resetBtnClicked(_ sender: Any) {
        emotionNumArray = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        
        for item in Range(0...8) {
            labelArray[item].text = "\(emotionArray[item]) \(emotionNumArray[item])"
        }
    }
    
}

