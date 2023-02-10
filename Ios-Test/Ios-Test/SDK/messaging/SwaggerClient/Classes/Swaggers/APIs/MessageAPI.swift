//
// MessageAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class MessageAPI {
    /**

     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func messageDeliveredIdPost(body: DeliveredIdBody, completion: @escaping ((_ data: DeliveredIdBody?,_ error: Error?) -> Void)) {
        messageDeliveredIdPostWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /message/delivered/{id}

     - :
       - type: http
       - name: bearerAuth
     - examples: [{contentType=application/json, example={
  "foo" : "foo"
}}]
     - parameter body: (body)  

     - returns: RequestBuilder<DeliveredIdBody> 
     */
    open class func messageDeliveredIdPostWithRequestBuilder(body: DeliveredIdBody) -> RequestBuilder<DeliveredIdBody> {
        let path = "/message/delivered/{id}"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<DeliveredIdBody>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**

     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func messageReadIdPost(body: ReadIdBody, completion: @escaping ((_ data: ReadIdBody?,_ error: Error?) -> Void)) {
        messageReadIdPostWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /message/read/{id}

     - :
       - type: http
       - name: bearerAuth
     - examples: [{contentType=application/json, example={
  "foo" : "foo"
}}]
     - parameter body: (body)  

     - returns: RequestBuilder<ReadIdBody> 
     */
    open class func messageReadIdPostWithRequestBuilder(body: ReadIdBody) -> RequestBuilder<ReadIdBody> {
        let path = "/message/read/{id}"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<ReadIdBody>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**

     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func messagesCountGet(completion: @escaping ((_ data: InlineResponse200?,_ error: Error?) -> Void)) {
        messagesCountGetWithRequestBuilder().execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /messages/count
     - 

     - :
       - type: http
       - name: bearerAuth
     - examples: [{contentType=application/json, example={
  "count" : 0
}}]

     - returns: RequestBuilder<InlineResponse200> 
     */
    open class func messagesCountGetWithRequestBuilder() -> RequestBuilder<InlineResponse200> {
        let path = "/messages/count"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<InlineResponse200>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter limit: (query) Maximum number of results possible (optional)
     - parameter sort: (query) Sort according to a specific field. (optional)
     - parameter start: (query) Skip a specific number of entries (especially useful for pagination) (optional)
     - parameter : (query) Get entries that matches exactly your input (optional)
     - parameter ne: (query) Get records that are not equals to something (optional)
     - parameter lt: (query) Get record that are lower than a value (optional)
     - parameter lte: (query) Get records that are lower than or equal to a value (optional)
     - parameter gt: (query) Get records that are greater than a value (optional)
     - parameter gte: (query) Get records that are greater than  or equal a value (optional)
     - parameter contains: (query) Get records that contains a value (optional)
     - parameter containss: (query) Get records that contains (case sensitive) a value (optional)
     - parameter _in: (query) Get records that matches any value in the array of values (optional)
     - parameter nin: (query) Get records that doesn&#x27;t match any value in the array of values (optional)
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func messagesGet(limit: Int? = nil, sort: String? = nil, start: Int? = nil, : String? = nil, ne: String? = nil, lt: String? = nil, lte: String? = nil, gt: String? = nil, gte: String? = nil, contains: String? = nil, containss: String? = nil, _in: [String]? = nil, nin: [String]? = nil, completion: @escaping ((_ data: [Message]?,_ error: Error?) -> Void)) {
        messagesGetWithRequestBuilder(limit: limit, sort: sort, start: start, : , ne: ne, lt: lt, lte: lte, gt: gt, gte: gte, contains: contains, containss: containss, _in: _in, nin: nin).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /messages
     - 

     - :
       - type: http
       - name: bearerAuth
     - examples: [{contentType=application/json, example=[ {
  "read" : false,
  "sender" : {
    "lastName" : "lastName",
    "role" : "role",
    "threads" : [ "threads", "threads" ],
    "avatar" : "avatar",
    "confirmed" : true,
    "created_by" : "created_by",
    "resetPasswordToken" : "resetPasswordToken",
    "firstName" : "firstName",
    "password" : "password",
    "blocked" : true,
    "provider" : "provider",
    "updated_by" : "updated_by",
    "confirmationToken" : "confirmationToken",
    "id" : "id",
    "email" : "email",
    "username" : "username"
  },
  "delivered" : false,
  "id" : "id",
  "text" : "text",
  "thread" : {
    "updated_by" : "updated_by",
    "messages" : [ "messages", "messages" ],
    "id" : "id",
    "title" : "title",
    "participents" : [ "participents", "participents" ],
    "created_by" : "created_by"
  }
}, {
  "read" : false,
  "sender" : {
    "lastName" : "lastName",
    "role" : "role",
    "threads" : [ "threads", "threads" ],
    "avatar" : "avatar",
    "confirmed" : true,
    "created_by" : "created_by",
    "resetPasswordToken" : "resetPasswordToken",
    "firstName" : "firstName",
    "password" : "password",
    "blocked" : true,
    "provider" : "provider",
    "updated_by" : "updated_by",
    "confirmationToken" : "confirmationToken",
    "id" : "id",
    "email" : "email",
    "username" : "username"
  },
  "delivered" : false,
  "id" : "id",
  "text" : "text",
  "thread" : {
    "updated_by" : "updated_by",
    "messages" : [ "messages", "messages" ],
    "id" : "id",
    "title" : "title",
    "participents" : [ "participents", "participents" ],
    "created_by" : "created_by"
  }
} ]}]
     - parameter limit: (query) Maximum number of results possible (optional)
     - parameter sort: (query) Sort according to a specific field. (optional)
     - parameter start: (query) Skip a specific number of entries (especially useful for pagination) (optional)
     - parameter : (query) Get entries that matches exactly your input (optional)
     - parameter ne: (query) Get records that are not equals to something (optional)
     - parameter lt: (query) Get record that are lower than a value (optional)
     - parameter lte: (query) Get records that are lower than or equal to a value (optional)
     - parameter gt: (query) Get records that are greater than a value (optional)
     - parameter gte: (query) Get records that are greater than  or equal a value (optional)
     - parameter contains: (query) Get records that contains a value (optional)
     - parameter containss: (query) Get records that contains (case sensitive) a value (optional)
     - parameter _in: (query) Get records that matches any value in the array of values (optional)
     - parameter nin: (query) Get records that doesn&#x27;t match any value in the array of values (optional)

     - returns: RequestBuilder<[Message]> 
     */
    open class func messagesGetWithRequestBuilder(limit: Int? = nil, sort: String? = nil, start: Int? = nil, : String? = nil, ne: String? = nil, lt: String? = nil, lte: String? = nil, gt: String? = nil, gte: String? = nil, contains: String? = nil, containss: String? = nil, _in: [String]? = nil, nin: [String]? = nil) -> RequestBuilder<[Message]> {
        let path = "/messages"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        var url = URLComponents(string: URLString)
        url?.queryItems = APIHelper.mapValuesToQueryItems([
                        "_limit": limit?.encodeToJSON(), 
                        "_sort": sort, 
                        "_start": start?.encodeToJSON(), 
                        "&#x3D;": , 
                        "_ne": ne, 
                        "_lt": lt, 
                        "_lte": lte, 
                        "_gt": gt, 
                        "_gte": gte, 
                        "_contains": contains, 
                        "_containss": containss, 
                        "_in": _in, 
                        "_nin": nin
        ])


        let requestBuilder: RequestBuilder<[Message]>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter _id: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func messagesIdDelete(_id: String, completion: @escaping ((_ data: Int64?,_ error: Error?) -> Void)) {
        messagesIdDeleteWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - DELETE /messages/{id}

     - :
       - type: http
       - name: bearerAuth
     - examples: [{contentType=application/json, example=0}]
     - parameter _id: (path)  

     - returns: RequestBuilder<Int64> 
     */
    open class func messagesIdDeleteWithRequestBuilder(_id: String) -> RequestBuilder<Int64> {
        var path = "/messages/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Int64>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter _id: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func messagesIdGet(_id: String, completion: @escaping ((_ data: Message?,_ error: Error?) -> Void)) {
        messagesIdGetWithRequestBuilder(_id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - GET /messages/{id}
     - 

     - :
       - type: http
       - name: bearerAuth
     - examples: [{contentType=application/json, example={
  "read" : false,
  "sender" : {
    "lastName" : "lastName",
    "role" : "role",
    "threads" : [ "threads", "threads" ],
    "avatar" : "avatar",
    "confirmed" : true,
    "created_by" : "created_by",
    "resetPasswordToken" : "resetPasswordToken",
    "firstName" : "firstName",
    "password" : "password",
    "blocked" : true,
    "provider" : "provider",
    "updated_by" : "updated_by",
    "confirmationToken" : "confirmationToken",
    "id" : "id",
    "email" : "email",
    "username" : "username"
  },
  "delivered" : false,
  "id" : "id",
  "text" : "text",
  "thread" : {
    "updated_by" : "updated_by",
    "messages" : [ "messages", "messages" ],
    "id" : "id",
    "title" : "title",
    "participents" : [ "participents", "participents" ],
    "created_by" : "created_by"
  }
}}]
     - parameter _id: (path)  

     - returns: RequestBuilder<Message> 
     */
    open class func messagesIdGetWithRequestBuilder(_id: String) -> RequestBuilder<Message> {
        var path = "/messages/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters: [String:Any]? = nil
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Message>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false)
    }
    /**

     - parameter body: (body)  
     - parameter _id: (path)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func messagesIdPut(body: NewMessage, _id: String, completion: @escaping ((_ data: Message?,_ error: Error?) -> Void)) {
        messagesIdPutWithRequestBuilder(body: body, _id: _id).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - PUT /messages/{id}

     - :
       - type: http
       - name: bearerAuth
     - examples: [{contentType=application/json, example={
  "read" : false,
  "sender" : {
    "lastName" : "lastName",
    "role" : "role",
    "threads" : [ "threads", "threads" ],
    "avatar" : "avatar",
    "confirmed" : true,
    "created_by" : "created_by",
    "resetPasswordToken" : "resetPasswordToken",
    "firstName" : "firstName",
    "password" : "password",
    "blocked" : true,
    "provider" : "provider",
    "updated_by" : "updated_by",
    "confirmationToken" : "confirmationToken",
    "id" : "id",
    "email" : "email",
    "username" : "username"
  },
  "delivered" : false,
  "id" : "id",
  "text" : "text",
  "thread" : {
    "updated_by" : "updated_by",
    "messages" : [ "messages", "messages" ],
    "id" : "id",
    "title" : "title",
    "participents" : [ "participents", "participents" ],
    "created_by" : "created_by"
  }
}}]
     - parameter body: (body)  
     - parameter _id: (path)  

     - returns: RequestBuilder<Message> 
     */
    open class func messagesIdPutWithRequestBuilder(body: NewMessage, _id: String) -> RequestBuilder<Message> {
        var path = "/messages/{id}"
        let _idPreEscape = "\(_id)"
        let _idPostEscape = _idPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{id}", with: _idPostEscape, options: .literal, range: nil)
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Message>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "PUT", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
    /**

     - parameter body: (body)  
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func messagesPost(body: NewMessage, completion: @escaping ((_ data: Message?,_ error: Error?) -> Void)) {
        messagesPostWithRequestBuilder(body: body).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     - POST /messages

     - :
       - type: http
       - name: bearerAuth
     - examples: [{contentType=application/json, example={
  "read" : false,
  "sender" : {
    "lastName" : "lastName",
    "role" : "role",
    "threads" : [ "threads", "threads" ],
    "avatar" : "avatar",
    "confirmed" : true,
    "created_by" : "created_by",
    "resetPasswordToken" : "resetPasswordToken",
    "firstName" : "firstName",
    "password" : "password",
    "blocked" : true,
    "provider" : "provider",
    "updated_by" : "updated_by",
    "confirmationToken" : "confirmationToken",
    "id" : "id",
    "email" : "email",
    "username" : "username"
  },
  "delivered" : false,
  "id" : "id",
  "text" : "text",
  "thread" : {
    "updated_by" : "updated_by",
    "messages" : [ "messages", "messages" ],
    "id" : "id",
    "title" : "title",
    "participents" : [ "participents", "participents" ],
    "created_by" : "created_by"
  }
}}]
     - parameter body: (body)  

     - returns: RequestBuilder<Message> 
     */
    open class func messagesPostWithRequestBuilder(body: NewMessage) -> RequestBuilder<Message> {
        let path = "/messages"
        let URLString = SwaggerClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: body)
        let url = URLComponents(string: URLString)


        let requestBuilder: RequestBuilder<Message>.Type = SwaggerClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true)
    }
}
