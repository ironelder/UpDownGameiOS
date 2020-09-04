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
    
    @IBOutlet weak var slider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        slider.setThumbImage(#imageLiteral(resourceName: "slider_thumb"), for: .normal)
    }

    @IBAction func sliderValueChanged(_ sender: UISlider){
        print(sender.value)
    }

    @IBAction func touchUpHitButton(_ sender:UIButton){
        print(slider.value)
    }
    
    @IBAction func touchUpResetButton(_ sender:UIButton){
        print("touch up reset button")
    }
}

