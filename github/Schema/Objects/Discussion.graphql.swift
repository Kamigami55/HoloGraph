// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// A discussion in a repository.
  static let Discussion = ApolloAPI.Object(
    typename: "Discussion",
    implementedInterfaces: [
      Github.Interfaces.Closable.self,
      Github.Interfaces.Comment.self,
      Github.Interfaces.Deletable.self,
      Github.Interfaces.Labelable.self,
      Github.Interfaces.Lockable.self,
      Github.Interfaces.Node.self,
      Github.Interfaces.Reactable.self,
      Github.Interfaces.RepositoryNode.self,
      Github.Interfaces.Subscribable.self,
      Github.Interfaces.Updatable.self,
      Github.Interfaces.Votable.self
    ]
  )
}