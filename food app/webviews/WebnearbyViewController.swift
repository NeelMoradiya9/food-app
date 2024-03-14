//
//  WebnearbyViewController.swift
//  food app
//
//  Created by Neel  on 08/12/23.
//

import UIKit

class WebnearbyViewController: UIViewController {
    var webv = String()
    @IBOutlet weak var webview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        webview.loadRequest(URLRequest(url: URL(string: webv)!))

    }
}
