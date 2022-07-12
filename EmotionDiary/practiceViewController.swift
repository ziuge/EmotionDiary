//
//  ViewController.swift
//  EmotionDiary
//
//  Created by CHOI on 2022/07/11.
//

import UIKit

class practiceViewController: UIViewController {

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
    
    var labelArray: [UILabel] {
        [emotionFirstLabel, emotionSecondLabel, emotionThirdLabel, emotionFourthLabel, emotionFifthLabel, emotionSixthLabel, emotionSeventhLabel, emotionEighthLabel, emotionNinethLabel]
    }
    var btnArray: [UIButton] {
        [emotionFirstButton, emotionSecondButton, emotionThirdButton, emotionFourthButton, emotionFifthButton, emotionSixthButton, emotionSeventhButton, emotionEighthButton, emotionNinethButton]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for item in Range(0...8) {
            labelArray[item].text = "\(emotionArray[item]) \(emotionNumArray[item])"
        }
        
//        emotionFirstLabel.text = setUserNickname()
        
//        view.backgroundColor = example().0
//        emotionFirstButton.setImage(UIImage(named: example().2), for: .normal)
        
//        emotionFirstButton.tag = 0
//        for item in btnArray {
//             = "\(emotionArray[sender.tag]) \(emotionNumArray[sender.tag])"
//        }
        
//        let image = UIImage(named: "sesac_slime6")?.withRenderingMode(.alwaysOriginal)
//        emotionFirstButton.setImage(image, for: .normal)
        
//        let systemImage = UIImage(systemName: <#T##String#>) // 애플 시스템 심볼
    }
    
    // 배경색, 레이블, 이미지
    func example() -> (UIColor, String, String){
        let color: [UIColor] = [.yellow, .red, .blue]
        let image: [String] = ["sesac_slime4", "sesac_slime5", "sesac_slime6"]
        
        return (color.randomElement()!, "고래밥", image.randomElement()!)
    }
    
    // return func 닉네임 실습
    func setUserNickname() -> String {
        let nickname = ["고래밥", "칙촉", "격투가"]
        let select = nickname.randomElement()!
//        emotionFirstLabel.text = "저는 \(select)입니다"
        return "저는 \(select)입니다"
    }
    
    // MARK: 버튼 클릭 시 레이블 바꾸기
    @IBAction func emotionFirstButtonClicked(_ sender: UIButton) {
//        print(sender.tag, sender.currentTitle, sender.currentImage)
        emotionNumArray[sender.tag] += 1
        labelArray[sender.tag].text = "\(emotionArray[sender.tag]) \(emotionNumArray[sender.tag])"
        
//        showAlertController()
    }
    
    func randomColor() -> UIColor {
        let color: [UIColor] = [.yellow, .red, .blue]
        return color.randomElement()!
    }
    
    func showAlertController() {
    
        // 1. 흰 바탕: UIAlertController
        let alert = UIAlertController(title: "타이틀", message: "메시지", preferredStyle: .alert)
    
        // 2. 버튼
        let ok = UIAlertAction(title: "확인", style: .destructive, handler: nil)
        let cancel = UIAlertAction(title: "취소", style: .cancel, handler: nil)
        let web = UIAlertAction(title: "새 창으로 열기", style: .default, handler: nil)
        let copy = UIAlertAction(title: "복사하기", style: .default, handler: nil)
        
        // 3. 1 + 2
        alert.addAction(copy)
        alert.addAction(web)
        alert.addAction(cancel)
        alert.addAction(ok)
        
        // 4. present
        present(alert, animated: true, completion: nil)
        
    }
    
}

