//
// EmailEmailAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class EmailEmailAPI {
    /**

     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func emailPost(body: EmailBody, completion: @escaping ((_ data: EmailBody?,_ error: Error?) -> Void)) {
        emailPostWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /email/

     - :
       - type: http
       - name: bearerAuth
     - examples: [{contentType=application/json, example={
  "foo" : "foo"
}}]
     - parameter body: (body)  

     - returns: RequestBuilder<EmailBody> 
     */
    open class func emailPostWithRequestBuilder(body: EmailBody) -> RequestBuilder<EmailBody> {
        let path = "/email/"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<EmailBody>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func emailSettingsGet(completion: @escaping ((_ data: EmailTestBody?,_ error: Error?) -> Void)) {
        emailSettingsGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /email/settings

     - :
       - type: http
       - name: bearerAuth
     - examples: [{contentType=application/json, example={
  "foo" : "foo"
}}]

     - returns: RequestBuilder<EmailTestBody> 
     */
    open class func emailSettingsGetWithRequestBuilder() -> RequestBuilder<EmailTestBody> {
        let path = "/email/settings"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<EmailTestBody>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func emailTestPost(body: EmailTestBody, completion: @escaping ((_ data: EmailTestBody?,_ error: Error?) -> Void)) {
        emailTestPostWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /email/test

     - :
       - type: http
       - name: bearerAuth
     - examples: [{contentType=application/json, example={
  "foo" : "foo"
}}]
     - parameter body: (body)  

     - returns: RequestBuilder<EmailTestBody> 
     */
    open class func emailTestPostWithRequestBuilder(body: EmailTestBody) -> RequestBuilder<EmailTestBody> {
        let path = "/email/test"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<EmailTestBody>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}
