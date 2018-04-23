//
//  detailViewController.swift
//  FinalProject
//
//  Created by Jaleel Shavers on 4/11/18.
//  Copyright © 2018 Jaleel Shavers. All rights reserved.
//

import UIKit

class detailViewController: UIViewController {

    @IBOutlet var imageView: UIImageView!
    @IBOutlet var textView: UITextView!
    
    var imagePass: String?
    var textPass: String?
    var titlePass: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

        self.view.backgroundColor = UIColor.lightGray

        if let imageName = imagePass {
            imageView.image = UIImage(named: imageName)
        }
        
        if let description = textPass {
            textView.text = description
        }
        
        if let title = titlePass {
            self.title = title
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
