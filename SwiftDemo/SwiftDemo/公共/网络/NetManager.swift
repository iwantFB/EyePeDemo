//
//  NetManager.swift
//  PointsMall
//
//  Created by 张飞 on 16/6/19.
//  Copyright © 2016年 张飞. All rights reserved.
//

import Foundation

import Alamofire
import SwiftyJSON

/// 网络请求回调闭包 success:是否成功  flag:预留参数  result:字典数据 error:错误信息
typealias NetworkFinished = (_ success: Bool, _ result: JSON, _ errorDesc: String) -> ()

enum NetConfi {
    /// 请求状态判断key
    static let statusKey = "result"
    /// 成功状态下所对应的值转化为String的内容
    static let successValue = ""
    /// 错误状态下错误内容的key
    static let errorMsgKey = "msg"
    /// 域名  http://192.168.1.103/skg/     http://115.29.196.224/skg/  http://192.168.1.103/skg/skg_getdata.do
//    static let hostName = "http://192.168.1.176/skg/"
    static let hostName = "http://115.29.196.224/"
}
/// 对常用网络方法的封装
class NetworkTool {
    /**
     GET请求
     
     - parameter URLString:  urlString
     - parameter parameters: 参数
     - parameter finished:   完成回调
     */
    class func get(_ APIString: String, parameters: [String : AnyObject]?, finished: @escaping NetworkFinished) {
        
        var urlString = ""
        if APIString.hasPrefix("http") {
            urlString = APIString
        } else {
            urlString = NetConfi.hostName + APIString
        }
        
        AF.request(urlString,method:.get,parameters:parameters).responseJSON { (response) -> Void in
            switch response.result {
            case .success:
                if let value = response.value {
                    let json = JSON(value)
                    if json[NetConfi.statusKey].stringValue == NetConfi.successValue{
                        finished(true, json, "")
                    }else{
                        let errorStr = json[NetConfi.errorMsgKey].stringValue
                        finished(false, json, errorStr)
                    }
                }
            case .failure(let error):
                print(error.localizedDescription)
                finished(false, JSON(""), "网络错误")
            }
        }
        
    }
    
    /**
     POST请求
     
     - parameter URLString:  urlString
     - parameter parameters: 参数
     - parameter finished:   完成回调
     */
    class func post(_ APIString: String, parameters: [String : AnyObject]?, finished: @escaping NetworkFinished) {
//
//        var urlString = ""
//        if APIString.hasPrefix("http") {
//            urlString = APIString
//        } else {
//            urlString = NetConfi.hostName + APIString
//        }
//
//        AF.request(urlString, method:.post,parameters: parameters).responseJSON { (response) -> Void in
//            switch response.result {
//            case .success:
//                if let value = response.value {
//                    let json = JSON(value)
//                    if json[NetConfi.statusKey].stringValue == NetConfi.successValue{
//                        finished(true, json, "")
//                    }else{
//                        let errorStr = json[NetConfi.errorMsgKey].stringValue
//                        finished(false, json, errorStr)
//                    }
//                }
//            case .failure(let error):
//                print(error.localizedDescription)
//                finished(false, JSON(""), "网络错误")
//            }
//        }
//    }
//    /**
//     multipartFormData方式上传图片
//
//     - parameter APIString:  urlString
//     - parameter images:     图片
//     - parameter parameters: 普通参数
//     - parameter finished:   完成回调
//     */
//    class func uploadImage(_ APIString: String,images:[String : UIImage]? ,parameters: [String : String]?, finished: @escaping NetworkFinished)  {
//        var urlString = ""
//        if APIString.hasPrefix("http") {
//            urlString = APIString
//        } else {
//            urlString = NetConfi.hostName + APIString
//        }
//        AF.upload(multipartFormData: { (multipartFormData) in
//            if let images = images{
//                for (key ,image) in images{
//                    if let imageData = UIImageJPEGRepresentation(image,0.1){
//                        multipartFormData.append(imageData, withName: "icon", fileName: key + ".jpg", mimeType: "image/jpeg")
//                    }
//                }
//            }
//            if let parameters = parameters{
//                for (key , value) in parameters{
//                    if let data = value.data(using: String.Encoding.utf8, allowLossyConversion: false){
//                        multipartFormData.append(data, withName: key)
//                    }
//                }
//            }
//
//        }, to: urlString,method:.post) { (encodingResult) in
//            switch encodingResult {
//            case .success(let upload):
//                upload.responseJSON { response in
//                    switch response.result {
//                    case .success:
//                        if let value = response.result.value {
//                            let json = JSON(value)
//                            if json[NetConfi.statusKey].stringValue == NetConfi.successValue{
//                                finished(true, json, "")
//                            }else{
//                                let errorStr = json[NetConfi.errorMsgKey].stringValue
//                                finished(false, json, errorStr)
//                            }
//                        }
//
//                    case .failure(let error):
//                        print(error.localizedDescription)
//                        finished(false, JSON(""), "网络错误")
//                        //                        finished(success: false, result: nil, errorDesc: "接收数据出错:"+error.localizedDescription)
//                    }
//                }
//            case .failure(let encodingError):
//                print(encodingError)
//                finished(false, JSON(""), "网络错误")
//                //                finished(success: false, result: nil, errorDesc: "数据上传出错:\(encodingError)")
//            }
//        }
    }
}
