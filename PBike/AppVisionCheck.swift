//
//  AppVisionCheck.swift
//  PBike
//
//  Created by 陳 冠禎 on 2016/12/29.
//  Copyright © 2016年 陳 冠禎. All rights reserved.
//

import UIKit

// APP check version and default
extension MapViewController {
    
    func appVersionInit() -> Int {
        
        var bikeOnService = 0
        #if CityBike
            //cibike Version
            self.topTitleimageView.setImage(UIImage(named: "cityBikeTitle"), for: UIControlState.normal)
            self.mailtitle = "[CBike]APP建議與回報"
            self.appId = "1173313131"
            self.govName = "高雄市政府"
            self.adUnitID = "ca-app-pub-3022461967351598/9565570510"
            self.bike = "CBike"
            self.applink = "https://itunes.apple.com/tw/app/citybike-gao-xiong-zui-piao/id1173313131?l=zh&mt=8"
            self.rideBikeWithYou = "人陪你騎CBike"
            //高雄
        #elseif PBike
            
            //Pbike Version
            self.appId = "1168936145"
            
        #else
            self.topTitleimageView.setImage(UIImage(named: "GoBike"), for: UIControlState.normal)
            self.applink = "https://itunes.apple.com/tw/app/id1192891004?l=zh&mt=8"
            self.adUnitID = "ca-app-pub-3022461967351598/7816514110"
            self.mailtitle = "[GoBike]APP建議與回報"
            self.appId = "1192891004"
            guard let citys = delegate?.citys else {
                print("citys error ")
                return -1
            }
            
            for city in citys {
                switch city {
                case "taipei", "newTaipei":
                    self.govName = "臺北市&新北市政府"
                    self.bike = "UBike"
                    self.rideBikeWithYou = "人陪你騎UBike"
                    self.dataOwner = "巨大機械工業股份有限公司"
                    bikeOnService += 7500
                    
                case "taoyuan" :
                    self.govName = "桃園市政府"
                    self.bike = "UBike"
                    self.rideBikeWithYou = "人陪你騎UBike"
                    self.dataOwner = "巨大機械工業股份有限公司"
                    bikeOnService += 2800
                    
                case "Hsinchu" :
                    self.govName = "新竹市政府"
                    self.bike = "YouBike"
                    self.rideBikeWithYou = "人陪你騎UBike"
                    self.dataOwner = "巨大機械工業股份有限公司"
                    bikeOnService += 1350
                    
                case "taichung":
                    self.govName = "台中市政府"
                    self.bike = "iBike"
                    self.rideBikeWithYou = "人陪你騎iBike"
                    self.dataOwner = "巨大機械工業股份有限公司"
                    bikeOnService += 7000
                    
                case "Changhua":
                    self.govName = "彰化縣政府"
                    self.bike = "CBike"
                    self.rideBikeWithYou = "人陪你騎CBike"
                    self.dataOwner = "巨大機械工業股份有限公司"
                    bikeOnService += 7000
                    
                case "tainan" :
                    self.govName = "台南市政府"
                    self.bike = "TBike"
                    self.rideBikeWithYou = "人陪你騎TBike"
                    self.dataOwner = "T-Bike營運團隊"
                    bikeOnService += 400
                    
                case "kaohsiung":
                    self.govName = "高雄市政府"
                    self.bike = "CityBike"
                    self.rideBikeWithYou = "人陪你騎CityBike"
                    self.dataOwner = "高雄捷運局"
                    bikeOnService += 2500
                    
                case "pingtung":
                    self.govName = "屏東縣政府"
                    self.bike = "PBike"
                    self.rideBikeWithYou = "人陪你騎PBike"
                    self.dataOwner = "高雄捷運局"
                    bikeOnService += 500
 
                default:
                    print("appvision error")
                    break
                    
                }
                bikeOnService = bikeOnService >= 40000 ? 40000 : bikeOnService
                
            }
        #endif
        return bikeOnService
    }
    
}
