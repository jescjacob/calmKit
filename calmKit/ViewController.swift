//
//  ViewController.swift
//  calmKit
//
//  Created by Jessica Jacob on 17/05/19.
//  Copyright © 2019 Jessica Jacob. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    @IBOutlet weak var gambarPantai: UIImageView!
    var fireMusic = AVAudioPlayer()
    var waterPlayer = AVAudioPlayer()
    var windPlayer = AVAudioPlayer()
    var birdPlayer = AVAudioPlayer()
    var musicPlayer = AVAudioPlayer()

   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = #colorLiteral(red: 0.00546401646, green: 0.6638430953, blue: 0.7191252708, alpha: 1)
        runMusic()

    }

    func runMusic(){
        do{
            fireMusic = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "fireplace", ofType: "wav")!))


            fireMusic.prepareToPlay()
            
            waterPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "water", ofType: "wav")!))
            
            
            waterPlayer.prepareToPlay()
            
            windPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "wind", ofType: "wav")!))
            
            
            windPlayer.prepareToPlay()
            
            birdPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "fireplace", ofType: "wav")!))
            
            
            birdPlayer.prepareToPlay()
            
            musicPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "lagu", ofType: "mp3")!))
            
            
            musicPlayer.prepareToPlay()
            
            print("lagu jalan")
        }catch{
            print(error)
        }
        fireMusic.volume = 0.0
        waterPlayer.volume = 0.0
        windPlayer.volume = 0.0
        birdPlayer.volume = 0.0
        musicPlayer.volume = 0.0
        
        waterPlayer.play ()
        fireMusic.play ()
        windPlayer.play ()
        birdPlayer.play ()
        musicPlayer.play ()
    }
    @IBAction func sliderFire(_ sender: UISlider) {
        print(sender.value)

        fireMusic.volume = Float(sender.value)

    }



  
    @IBAction func sliderWater(_ sender: UISlider) {
        print(sender.value)
        waterPlayer.volume = Float(sender.value)
    
    }
    
   
    @IBAction func sliderWind(_ sender: UISlider) {
        print(sender.value)
        windPlayer.volume = Float(sender.value)
        
    }
    



    @IBAction func sliderBird(_ sender: UISlider) {
    print(sender.value)
        birdPlayer.volume = Float(sender.value)
       
        

    }

    @IBAction func sliderMusic(_ sender: UISlider) {
        print(sender.value)
        musicPlayer.volume = Float(sender.value)

    }
    

}
