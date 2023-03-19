//
//  ViewController.swift
//  CFiAdmobSwiftSample
//
//  Created by CF-NB on 2023/3/19.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {
    var bannerView:GADBannerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bannerView = GADBannerView.init(adSize: GADAdSizeBanner,
                            origin: CGPoint(x: (self.view.frame.size.width - 320) / 2,
                                    y: self.view.frame.height-50))
        
        self.view.addSubview(bannerView)
        
        bannerView.adUnitID = "ca-app-pub-7236340530869760/5572068733"
        bannerView.rootViewController = self
        bannerView.delegate = self
        
        let req = GADRequest()
//        GADMobileAds.sharedInstance().requestConfiguration.testDeviceIdentifiers = [GADSimulatorID];
        
        bannerView.load(req)
     }
}

extension ViewController:GADBannerViewDelegate{
    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
       print("adViewDidReceiveAd")
    }
    func bannerViewWillPresentScreen(_ bannerView: GADBannerView) {
       print("adViewWillPresentScreen")
    }
    func bannerViewDidDismissScreen(_ bannerView: GADBannerView) {
       print("adViewDidDismissScreen")
    }
    func bannerViewWillDismissScreen(_ bannerView: GADBannerView) {
       print("adViewWillDismissScreen")
    }
   func adViewWillLeaveApplication(_ bannerView: GADBannerView) {
       print("adViewWillLeaveApplication")
    }
}
