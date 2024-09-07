//
//  UserManagementInterceptor.swift
//  HoloGraph
//
//  Created by Eason on 9/7/24.
//

import Foundation
import Apollo

class UserManagementInterceptor: ApolloInterceptor {
    public var id: String = UUID().uuidString

    /// Helper function to add the token then move on to the next step
    private func addTokenAndProceed<Operation: GraphQLOperation>(
        _ token: String,
        to request: HTTPRequest<Operation>,
        chain: RequestChain,
        response: HTTPResponse<Operation>?,
        completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void
    ) {
        request.addHeader(name: "Authorization", value: "Bearer \(token)")
        chain.proceedAsync(
            request: request,
            response: response,
            interceptor: self,
            completion: completion
        )
    }
    
    func interceptAsync<Operation: GraphQLOperation>(
        chain: RequestChain,
        request: HTTPRequest<Operation>,
        response: HTTPResponse<Operation>?,
        completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void
    ) {
        self.addTokenAndProceed(
            "GITHUB_TOKEN",
            to: request,
            chain: chain,
            response: response,
            completion: completion
        )
    }
}
