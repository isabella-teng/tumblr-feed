//
//  PhotosDetailsViewController.swift
//  Tumblr Feed
//
//  Created by Isabella Teng on 6/22/17.
//  Copyright © 2017 Isabella Teng. All rights reserved.
//

import UIKit
import AlamofireImage

class PhotosDetailsViewController: UIViewController {

    
    
    @IBOutlet weak var imageView: UIImageView!
    var post: [String: Any?] = [:]
    
    var photoURL: UIImage! //common practice is to pass the entire post here
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let photos = post["photos"] as? [[String: Any]] {
            // photos is NOT nil, we can use it!
            // TODO: Get the photo url
            // Get the first photo in the photos array
            let photo = photos[0]
            // Get the original size dictionary from the photo
            let originalSize = photo["original_size"] as! [String: Any]
            // Get the url string from the original size dictionary
            let urlString = originalSize["url"] as! String
            // Create the url string using the urlString
            let url = URL(string: urlString)
            imageView.af_setImage(withURL: url!)
    }
    
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    
    // MARK: - Navigation

//     In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//        
//        
//        
//        
//        
//    }
    

}

