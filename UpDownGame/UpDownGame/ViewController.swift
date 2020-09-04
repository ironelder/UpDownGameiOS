//
//  ViewController.swift
//  UpDownGame
//
//  Created by Sky Ashboun on 2020/08/27.
//  Copyright © 2020 Sky Ashboun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //한줄 주석
    
    /* 여러줄 주석
     봣냐
     여러줄임
     신기하지
     */
    
    private var randomValue:Int = 0
    private var tryCount:Int = 0
    
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var tryCountLabel:UILabel!
    @IBOutlet weak var sliderValueLabel:UILabel!
    @IBOutlet weak var minValueLabel:UILabel!
    @IBOutlet weak var maxValueLabel:UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        slider.setThumbImage(#imageLiteral(resourceName: "slider_thumb"), for: .normal)
        resetFunc()
    }

    @IBAction func sliderValueChanged(_ sender: UISlider){
        print(sender.value)
        let integerValue:Int = Int(sender.value)
        sliderValueLabel.text = String(integerValue)
    }

    @IBAction func touchUpHitButton(_ sender:UIButton){
        print(slider.value)
        let hitValue:Int = Int(slider.value)
        slider.value = Float(hitValue)
        
        tryCount = tryCount + 1
        tryCountLabel.text = "\(tryCount) / 5"
        
        if randomValue == hitValue {
            print("Player WIN !!")
        }
    }
    
    @IBAction func touchUpResetButton(_ sender:UIButton){
        print("touch up reset button")
        resetFunc()
    }
    
    private func resetFunc(){
        print("reset")
        randomValue = Int.random(in: 0...30)
        print("randomValue = \(randomValue)")
        tryCount = 0
        tryCountLabel.text = "0 / 5"
        slider.minimumValue = 0
        slider.maximumValue = 30
        slider.value = 15
        minValueLabel.text = "0"
        maxValueLabel.text = "30"
        sliderValueLabel.text = "15"
    }
}

