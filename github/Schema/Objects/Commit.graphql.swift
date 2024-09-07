// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// Represents a Git commit.
  static let Commit = ApolloAPI.Object(
    typename: "Commit",
    implementedInterfaces: [
      Github.Interfaces.GitObject.self,
      Github.Interfaces.Node.self,
      Github.Interfaces.Subscribable.self,
      Github.Interfaces.UniformResourceLocatable.self
    ]
  )
}