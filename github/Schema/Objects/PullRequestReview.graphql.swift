// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// A review object for a given pull request.
  static let PullRequestReview = ApolloAPI.Object(
    typename: "PullRequestReview",
    implementedInterfaces: [
      Github.Interfaces.Comment.self,
      Github.Interfaces.Deletable.self,
      Github.Interfaces.Minimizable.self,
      Github.Interfaces.Node.self,
      Github.Interfaces.Reactable.self,
      Github.Interfaces.RepositoryNode.self,
      Github.Interfaces.Updatable.self,
      Github.Interfaces.UpdatableComment.self
    ]
  )
}