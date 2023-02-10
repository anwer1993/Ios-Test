//
// UploadFileAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class UploadFileAPI {
    /**

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func uploadFilesCountGet(completion: @escaping ((_ data: UploadBody?,_ error: Error?) -> Void)) {
        uploadFilesCountGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /upload/files/count

     - :
       - type: http
       - name: bearerAuth
     - examples: [{contentType=application/json, example={
  "foo" : "foo"
}}]

     - returns: RequestBuilder<UploadBody> 
     */
    open class func uploadFilesCountGetWithRequestBuilder() -> RequestBuilder<UploadBody> {
        let path = "/upload/files/count"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<UploadBody>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func uploadFilesGet(completion: @escaping ((_ data: UploadBody?,_ error: Error?) -> Void)) {
        uploadFilesGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /upload/files

     - :
       - type: http
       - name: bearerAuth
     - examples: [{contentType=application/json, example={
  "foo" : "foo"
}}]

     - returns: RequestBuilder<UploadBody> 
     */
    open class func uploadFilesGetWithRequestBuilder() -> RequestBuilder<UploadBody> {
        let path = "/upload/files"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<UploadBody>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter _id: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func uploadFilesIdDelete(_id: String, completion: @escaping ((_ data: UploadBody?,_ error: Error?) -> Void)) {
        uploadFilesIdDeleteWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - DELETE /upload/files/{id}

     - :
       - type: http
       - name: bearerAuth
     - examples: [{contentType=application/json, example={
  "foo" : "foo"
}}]
     - parameter _id: (path)  

     - returns: RequestBuilder<UploadBody> 
     */
    open class func uploadFilesIdDeleteWithRequestBuilder(_id: String) -> RequestBuilder<UploadBody> {
        var path = "/upload/files/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<UploadBody>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter _id: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func uploadFilesIdGet(_id: String, completion: @escaping ((_ data: UploadBody?,_ error: Error?) -> Void)) {
        uploadFilesIdGetWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /upload/files/{id}

     - :
       - type: http
       - name: bearerAuth
     - examples: [{contentType=application/json, example={
  "foo" : "foo"
}}]
     - parameter _id: (path)  

     - returns: RequestBuilder<UploadBody> 
     */
    open class func uploadFilesIdGetWithRequestBuilder(_id: String) -> RequestBuilder<UploadBody> {
        var path = "/upload/files/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<UploadBody>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func uploadPost(body: UploadBody, completion: @escaping ((_ data: UploadBody?,_ error: Error?) -> Void)) {
        uploadPostWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /upload/

     - :
       - type: http
       - name: bearerAuth
     - examples: [{contentType=application/json, example={
  "foo" : "foo"
}}]
     - parameter body: (body)  

     - returns: RequestBuilder<UploadBody> 
     */
    open class func uploadPostWithRequestBuilder(body: UploadBody) -> RequestBuilder<UploadBody> {
        let path = "/upload/"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<UploadBody>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**

     - parameter _id: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func uploadSearchIdGet(_id: String, completion: @escaping ((_ data: UploadBody?,_ error: Error?) -> Void)) {
        uploadSearchIdGetWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /upload/search/{id}

     - :
       - type: http
       - name: bearerAuth
     - examples: [{contentType=application/json, example={
  "foo" : "foo"
}}]
     - parameter _id: (path)  

     - returns: RequestBuilder<UploadBody> 
     */
    open class func uploadSearchIdGetWithRequestBuilder(_id: String) -> RequestBuilder<UploadBody> {
        var path = "/upload/search/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<UploadBody>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
}