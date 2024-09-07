// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// A comment on a discussion.
  static let DiscussionComment = ApolloAPI.Object(
    typename: "DiscussionComment",
    implementedInterfaces: [
      Github.Interfaces.Comment.self,
      Github.Interfaces.Deletable.self,
      Github.Interfaces.Minimizable.self,
      Github.Interfaces.Node.self,
      Github.Interfaces.Reactable.self,
      Github.Interfaces.Updatable.self,
      Github.Interfaces.UpdatableComment.self,
      Github.Interfaces.Votable.self
    ]
  )
}