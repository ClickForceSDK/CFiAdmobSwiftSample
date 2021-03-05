//
//  ViewController.swift
//  CFiAdmobSwiftSample
//
//  Created by Eric Chen on 2021/3/5.
//

import UIKit
import GoogleMobileAds
class ViewController: UIViewController {
    var bannerView:GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        bannerView = GADBannerView(adSize: kGADAdSizeBanner, origin: CGPoint(x: (self.view.frame.size.width - 320) / 2, y: self.view.frame.height-50))
        self.view.addSubview(bannerView)
        
        bannerView.adUnitID = "ca-app-pub-7236340530869760/5572068733"
        bannerView.rootViewController = self
        bannerView.delegate = self
        
        let req = GADRequest()
//        req.testDevices = ["14c30346989d0fac6da79e0c7d580cd7"];
        
        bannerView.load(req)
        
    }
}

extension ViewController:GADBannerViewDelegate{
    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        print("adViewDidReceiveAd")
    }
    
    func adViewWillPresentScreen(_ bannerView: GADBannerView) {
        print("adViewWillPresentScreen")
    }
    
    func adViewDidDismissScreen(_ bannerView: GADBannerView) {
        print("adViewDidDismissScreen")
    }
    func adViewWillDismissScreen(_ bannerView: GADBannerView) {
        print("adViewWillDismissScreen")
    }
    func adViewWillLeaveApplication(_ bannerView: GADBannerView) {
        print("adViewWillLeaveApplication")
    }
}

