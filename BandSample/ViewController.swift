//
//  ViewController.swift
//  BandSample
//
//  Created by Itsuki Aoyagi on 2021/05/23.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // シンバル用の音源ファイルとプレイヤーのインスタンス
    let cymbalPath = Bundle.main.bundleURL.appendingPathComponent("cymbal.mp3")
    var cymbalPlayer = AVAudioPlayer()
    
    // バックミュージック用の音源ファイルとプレイヤーのインスタンス
    let backmusicPath = Bundle.main.bundleURL.appendingPathComponent("backmusic.mp3")
    var backmusicPlayer = AVAudioPlayer()
    
    // ギター用の音源ファイルとプレイヤーのインsタンス
    let guitarPath = Bundle.main.bundleURL.appendingPathComponent("guitar.mp3")
    var guitarPlayer = AVAudioPlayer()
   
    @IBAction func cymbal(_ sender: Any) {
        soundPlayer(player: &cymbalPlayer, path: cymbalPath, count: 0)
    }
    
    @IBAction func guitar(_ sender: Any) {
        soundPlayer(player: &guitarPlayer, path: guitarPath, count: 0)
    }
    
    @IBAction func backmusicPlay(_ sender: Any) {
        soundPlayer(player: &backmusicPlayer, path: backmusicPath, count: -1)
    }
    
    @IBAction func backmusicStop(_ sender: Any) {
        if (backmusicPlayer.isPlaying) {
            backmusicPlayer.stop()
        }
    }
    
    fileprivate func soundPlayer(player:inout AVAudioPlayer, path: URL, count: Int) {
        do {
            player = try AVAudioPlayer(contentsOf: path, fileTypeHint: nil)
            player.numberOfLoops = count
            player.play()
        } catch {
            print("エラーが発生しました")
        }
    }
}

