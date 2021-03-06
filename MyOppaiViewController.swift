//
//  MyOppaiViewController.swift
//  iOppai
//
//  Created by Hiromu Ochiai on 2015/07/26.
//  Copyright (c) 2015年 Hiromu Ochiai. All rights reserved.
//

import UIKit

class MyOppaiViewController: UIViewController {

    // これが追加されて
    // このクラスのプロパティとしてアクセスできるようになった（はず）
    @IBOutlet weak var myWebView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.



        // 1) まずNSStringつくる
        let s = "http://google.com"
        // 2) これからNSURLをつくる
        let url = NSURL(string: s)
        // 3) このurlからNSURLRequestをつくる
        let req = NSURLRequest(URL: url!)
        // 4) このreqを、selfのmyWebView（と名前つけたやつ）に食わせる
        self.myWebView.loadRequest(req)



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
