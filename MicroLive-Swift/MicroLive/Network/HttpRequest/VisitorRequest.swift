//
//  VisitorRequest.swift
//  Douyin
//
//  Created by MountainX on 2018/8/4.
//  Copyright © 2018年 MountainX. All rights reserved.
//

import Foundation

class VisitorRequest: BaseRequest {
    
    var udid:String?
    
    static func saveOrFindVisitor(success:@escaping HttpSuccess, failure:@escaping HttpFailure) {
        let request = VisitorRequest.init()
        request.udid = UDID
        NetworkManager.postRequest(urlPath: CREATE_VISITOR_BY_UDID_URL, request: request, success: { data in
            let response = VisitorResponse.deserialize(from: data as? [String:Any])
            success(response!)
        }, failure: { error in
            failure(error)
        })
    }
    
}
