// @generated
// This file was automatically generated and should not be edited.

import ApolloAPI

extension Github.Objects {
  /// Projects manage issues, pull requests and notes within a project owner.
  static let Project = ApolloAPI.Object(
    typename: "Project",
    implementedInterfaces: [
      Github.Interfaces.Closable.self,
      Github.Interfaces.Node.self,
      Github.Interfaces.Updatable.self
    ]
  )
}