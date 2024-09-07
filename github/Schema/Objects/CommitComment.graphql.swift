// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// Represents a comment on a given Commit.
  static let CommitComment = ApolloAPI.Object(
    typename: "CommitComment",
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