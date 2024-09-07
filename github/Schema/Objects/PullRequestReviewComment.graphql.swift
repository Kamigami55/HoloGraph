// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// A review comment associated with a given repository pull request.
  static let PullRequestReviewComment = ApolloAPI.Object(
    typename: "PullRequestReviewComment",
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