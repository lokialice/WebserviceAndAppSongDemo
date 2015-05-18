//
//  ChitietViewController.swift
//  MTPAPPSong
//
//  Created by Macbook Pro MD102 on 4/10/15.
//  Copyright (c) 2015 Macbook Pro MD102. All rights reserved.
//

import UIKit
import AVFoundation
class ChitietViewController: UIViewController {

    var chuoi:[String]!
     var thamSoTruyen:NSUserDefaults!
    var player:AVPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        //hinhnen
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "gai.jpg")!)
        thamSoTruyen = NSUserDefaults()
        var row:Int = thamSoTruyen.objectForKey("number") as Int
        var url:NSURL = NSURL(string: "http://www.avatarnice.com/appSong/danhsach.php?cot=mp3")!
        var ds:NSString = NSString(contentsOfURL: url, encoding: NSUTF8StringEncoding, error: nil)!
        chuoi = ds.componentsSeparatedByString("#") as [String]
        player = AVPlayer()
        
        var error:NSError? = nil
        var u:NSURL = NSURL(string: chuoi[row])!
        player = AVPlayer(URL: u)
        player.play()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnStop(sender: AnyObject) {
        player.pause()
    }
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
