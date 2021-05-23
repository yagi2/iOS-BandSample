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
    
    @IBAction func cymbal(_ sender: Any) {
        do {
            cymbalPlayer = try AVAudioPlayer(contentsOf: cymbalPath, fileTypeHint: nil)
            cymbalPlayer.play()
        } catch {
            print("シンバル再生でエラーが出ました。")
        }
    }
    
    // ギター用の音源ファイルとプレイヤーのインsタンス
    let guitarPath = Bundle.main.bundleURL.appendingPathComponent("guitar.mp3")
    var guitarPlayer = AVAudioPlayer()
    
    @IBAction func guitar(_ sender: Any) {
        do {
            guitarPlayer = try AVAudioPlayer(contentsOf: guitarPath, fileTypeHint: nil)
            guitarPlayer.play()
        } catch {
            print("ギター再生でエラーが出ました。")
        }
    }
    
    // バックミュージック用の音源ファイルとプレイヤーのインスタンス
    let backmusicPath = Bundle.main.bundleURL.appendingPathComponent("backmusic.mp3")
    var backmusicPlayer = AVAudioPlayer()
    
    @IBAction func backmusicPlay(_ sender: Any) {
        do {
            backmusicPlayer = try AVAudioPlayer(contentsOf: backmusicPath, fileTypeHint: nil)
            backmusicPlayer.numberOfLoops = -1 // 無限ループでリピート再生する
            backmusicPlayer.play()
        } catch {
            print("バックミュージック再生でエラーが出ました")
        }
    }
    
    @IBAction func backmusicStop(_ sender: Any) {
        if (backmusicPlayer.isPlaying) {
            backmusicPlayer.stop()
        }
    }
}

