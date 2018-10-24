//
//  ViewController.swift
//  ColorBlindnessTest
//
//  Created by Divya Manirajan on 10/18/18.
//  Copyright © 2018 Divya Manirajan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 0

    @IBOutlet weak var text: UITextField!
    
    @IBOutlet weak var button: UIButton!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var endImage: UIImageView!
    
    @IBOutlet weak var reset: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        image.image = UIImage(named: "color1")
        label.text = String("")
        text.text = String("")
        
    }

    @IBAction func check(_ sender: Any) {
        
        if(image.image == UIImage(named: "color1") && text.text == String("45")){
            
            label.text = String("Correct, showing next picture.")
            text.text = String("")
            image.image = UIImage(named: "color2")
        }
        else if(image.image == UIImage(named: "color2") && text.text == String("15")){
            text.text=String("")
            label.text = String("Correct, showing next picture.")
            image.image = UIImage(named: "color3")
        }
        else if(image.image == UIImage(named: "color3") && text.text == String("7")){
            text.text=String("")
            label.text = String("Correct, showing next picture.")
            image.image = UIImage(named: "color4")
        }
        else if(image.image == UIImage(named: "color4") && text.text == String("7")){
            text.text=String("")
            label.text = String("Correct, showing next picture.")
            image.image = UIImage(named: "color5")
        }
        else if(image.image == UIImage(named: "color5") && text.text == String("73")){
            text.text=String("")
            label.text = String("Correct")
            if (count > 0){
                endImage.image = UIImage(named: "endsad")
            }
            else{
                endImage.image = UIImage(named: "endhappy")
            }
            
        }
        else{
            label.text = String("You may be at risk for color blindness")
            text.text = String("")
            count += 1
            endImage.image = UIImage(named: "endsad")
            
        }
        
        
    }
    
    
   
    @IBAction func reset(_ sender: Any) {
        endImage.image = UIImage(named: "")
        image.image = UIImage(named: "color1")
        text.text = String("")
        label.text = String("")
        count = 0
        
    }
    
 
}
        

    
    


